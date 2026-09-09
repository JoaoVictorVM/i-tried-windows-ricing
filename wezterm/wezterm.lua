-- ================================================================
-- Configuração do WezTerm
-- Objetivo: visual clean, sem barra de título, ~80% de opacidade,
-- igual ao print de referência (fundo nítido, sem "Windows PowerShell"
-- escrito em cima).
-- Mantido por JV
-- ================================================================

local wezterm = require("wezterm")

-- config_builder() dá mensagens de erro mais claras se algo na
-- config estiver errado. Se sua versão do WezTerm for muito antiga
-- e isso der erro, troque a linha abaixo por: local config = {}
local config = wezterm.config_builder()

-- ----------------------------------------------------------------
-- SHELL PADRÃO
-- Define o que abre quando o WezTerm inicia.
-- Troque "powershell.exe" por "pwsh.exe" se você usa o PowerShell 7
-- (Core) em vez do Windows PowerShell 5 que já vem no Windows.
-- ----------------------------------------------------------------
config.default_prog = { "powershell.exe", "-NoLogo" }

-- ----------------------------------------------------------------
-- SEM BARRA DE TÍTULO
-- Valores possíveis pra window_decorations:
--   "TITLE | RESIZE" -> padrão do WezTerm (barra + borda)
--   "RESIZE"         -> some a barra de título, mantém a borda
--                       de redimensionar
--   "NONE"           -> remove tudo (título e borda)
-- IMPORTANTE: usamos "RESIZE" e não "NONE". O "NONE" remove a borda
-- de redimensionar por completo, e sem ela o GlazeWM não consegue
-- detectar a janela como "normal" pra tilar — ela fica sempre
-- floating e centralizada. "RESIZE" tira a barra de título mas
-- mantém a borda invisível que o GlazeWM precisa pra gerenciar.
-- ----------------------------------------------------------------
config.window_decorations = "RESIZE"

-- ----------------------------------------------------------------
-- ABAS
-- O GlazeWM já organiza as janelas pra você, então a barra de abas
-- do próprio WezTerm fica sobrando aqui. Cada terminal = 1 janela,
-- e o WM cuida do tiling.
-- ----------------------------------------------------------------
config.enable_tab_bar = false

-- ----------------------------------------------------------------
-- OPACIDADE (~80%, igual na imagem)
-- 1.0 = totalmente opaco / 0.0 = totalmente transparente
-- Deixando assim (sem win32_system_backdrop) o fundo fica nítido,
-- sem desfoque - igual ao da sua imagem de referência.
-- ----------------------------------------------------------------
config.window_background_opacity = 0.8

-- Se um dia você quiser o efeito de "vidro fosco" (blur de verdade
-- do Windows 11) em vez do fundo nítido, descomente as duas linhas
-- abaixo (e ajuste a opacidade, valores bem baixos funcionam melhor
-- com o Acrylic):
-- config.window_background_opacity = 0.5
-- config.win32_system_backdrop = "Acrylic"

-- ----------------------------------------------------------------
-- FONTE
-- PRECISA ser uma Nerd Font, senão o ícone de pasta e a seta do
-- seu prompt (Starship/oh-my-posh) aparecem como um quadradinho
-- ou "?". Baixe em nerdfonts.com e troque o nome abaixo pela fonte
-- que você instalou.
-- ----------------------------------------------------------------
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 11.0

-- ----------------------------------------------------------------
-- PADDING INTERNO
-- Espaço entre o texto e a borda da janela. Valores baixos deixam
-- o terminal mais "colado", visual mais clean.
-- ----------------------------------------------------------------
config.window_padding = {
	left = 8,
	right = 8,
	top = 8,
	bottom = 8,
}

-- ----------------------------------------------------------------
-- CURSOR
-- "SteadyBar" é aquele cursor em formato de barra vertical parada,
-- igual o que aparece na sua imagem de referência.
-- ----------------------------------------------------------------
config.default_cursor_style = "SteadyBar"

-- ----------------------------------------------------------------
-- ESQUEMA DE CORES
-- Troque à vontade por qualquer nome de tema built-in do WezTerm
-- (lista completa em wezterm.org/colorschemes).
-- ----------------------------------------------------------------
config.color_scheme = "Tokyo Night"

return config
