# PowerShell Profile

O PowerShell tem 4 arquivos de profile diferentes. Este repositório usa dois deles, em lugares diferentes:

| Arquivo | Onde fica | O que faz |
|---|---|---|
| [`profile.ps1`](./profile.ps1) (nesta pasta) | `C:\Users\<VOCE>\Documents\WindowsPowerShell\profile.ps1` | UTF-8 no console + Fastfetch condicional (fora do WezTerm) |
| `Microsoft.PowerShell_profile.ps1` | `C:\Users\<VOCE>\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1` | Liga o prompt — fica dentro de [`starship/`](../starship) **ou** [`oh-my-posh/`](../oh-my-posh), dependendo de qual você escolher |

Os dois arquivos são lidos juntos toda vez que um shell novo abre — não precisa escolher entre um ou outro aqui.

## O que o `profile.ps1` desta pasta faz

- Força UTF-8 no console (pra caracteres especiais/acentos não quebrarem)
- Roda o **Fastfetch** (specs do PC), mas **só fora do WezTerm** — checando a variável de ambiente `WEZTERM_PANE`

> Ajuste o caminho `C:/Users/mart1/.config/fastfetch/config.jsonc` no arquivo pro seu próprio usuário antes de usar.

## Ver os 4 caminhos de profile do seu PC

```powershell
$PROFILE.PSObject.Properties | ForEach-Object {
    if (Test-Path $_.Value) {
        Write-Host "`n== $($_.Name): $($_.Value) =="
        Get-Content $_.Value
    }
}
```

## Depois de editar

Feche **todas** as janelas de terminal abertas (WezTerm, PowerShell, Windows Terminal) e abra de novo.
