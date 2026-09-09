# PowerShell Profile

O PowerShell tem 4 arquivos de profile diferentes, que rodam em momentos/escopos diferentes. Este setup usa dois deles.

## Onde vai cada arquivo

| Arquivo deste repositório | Caminho real no Windows |
|---|---|
| [`Microsoft.PowerShell_profile.ps1`](./Microsoft.PowerShell_profile.ps1) | `C:\Users\<VOCE>\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1` |
| [`profile.ps1`](./profile.ps1) | `C:\Users\<VOCE>\Documents\WindowsPowerShell\profile.ps1` |

Pra ver os 4 caminhos possíveis no seu PC (e quais deles já existem), roda:

```powershell
$PROFILE.PSObject.Properties | ForEach-Object {
    if (Test-Path $_.Value) {
        Write-Host "`n== $($_.Name): $($_.Value) =="
        Get-Content $_.Value
    }
}
```

## O que cada arquivo faz

**`Microsoft.PowerShell_profile.ps1`** — só liga o [Starship](../starship):

```powershell
Invoke-Expression (&starship init powershell)
```

**`profile.ps1`** — roda antes do Starship. Cuida de:

- Forçar UTF-8 no console (pra caracteres especiais/acentos não quebrarem)
- Rodar o **Fastfetch** (specs do PC), mas **só fora do WezTerm** — checando a variável de ambiente `WEZTERM_PANE`, que o próprio WezTerm cria em qualquer processo que ele abre

Resultado: abrindo pelo WezTerm → sem Fastfetch, visual limpo. Abrindo pelo PowerShell normal ou Windows Terminal → Fastfetch aparece normal.

> Ajuste o caminho `C:/Users/mart1/.config/fastfetch/config.jsonc` no `profile.ps1` pro seu próprio usuário antes de usar.

## Depois de editar

Feche **todas** as janelas de terminal abertas (WezTerm, PowerShell, Windows Terminal) e abra de novo — os arquivos de profile só são lidos na abertura do shell.
