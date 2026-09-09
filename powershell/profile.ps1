# Minimal profile: UTF-8 + Fastfetch (fora do WezTerm) com config explícita
try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

# O WezTerm seta a variável WEZTERM_PANE em qualquer processo que ele abre.
# Usamos isso pra mostrar o Fastfetch só fora do WezTerm (terminal "normal"),
# mantendo o visual do WezTerm limpo, sem specs do PC aparecendo.
if (-not $env:WEZTERM_PANE) {
    Clear-Host
    if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
        fastfetch -c "C:/Users/mart1/.config/fastfetch/config.jsonc"
    }
}
