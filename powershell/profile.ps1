# Minimal profile: UTF-8 + Fastfetch (fora do WezTerm) com config explícita
try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

# Em vez de checar a variável WEZTERM_PANE (que "vaza" pra qualquer processo
# filho, tipo um terminal aberto dentro de outro programa que você abriu de
# dentro do WezTerm), a gente confere quem é o processo PAI DIRETO deste
# PowerShell. Se for o "wezterm-gui" de verdade, esconde o Fastfetch. Se for
# outro programa (Zed, Windows Terminal, etc.), mostra normal — mesmo que
# esse programa tenha sido aberto originalmente de dentro do WezTerm.
$parentId   = (Get-CimInstance Win32_Process -Filter "ProcessId = $PID").ParentProcessId
$parentName = (Get-Process -Id $parentId -ErrorAction SilentlyContinue).ProcessName

if ($parentName -ne "wezterm-gui") {
    Clear-Host
    if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
        fastfetch -c "C:/Users/mart1/.config/fastfetch/config.jsonc"
    }
}
