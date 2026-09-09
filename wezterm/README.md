# WezTerm

Terminal emulator usado no lugar do Windows Terminal padrão. Cuida só da "janela" do terminal: sem barra de título, opacidade, fonte. O prompt em si (ícone de pasta + seta) é configurado à parte, no [Starship](../starship).

## Instalação

```powershell
winget install wez.wezterm
```

## Onde vai a configuração

```
%userprofile%\.wezterm.lua
```

(também funciona em `%userprofile%\.config\wezterm\wezterm.lua`, se preferir organizar assim)

## O que essa config faz

- Abre direto no **PowerShell** (`default_prog`)
- Remove a barra de título (`window_decorations = "RESIZE"`)
- Desativa a barra de abas (`enable_tab_bar = false`) — o GlazeWM já organiza as janelas
- Opacidade de 80% (`window_background_opacity`), sem blur — fundo nítido
- Fonte Nerd Font, necessária pros ícones do Starship aparecerem
- Cursor em barra parada (`SteadyBar`)

## Fonte

Troque `JetBrainsMono Nerd Font` no arquivo pelo nome exato da Nerd Font que você instalou (confira em Configurações do Windows > Personalização > Fontes).

## Recarregar depois de editar

`Ctrl + Shift + R` dentro do próprio WezTerm.
