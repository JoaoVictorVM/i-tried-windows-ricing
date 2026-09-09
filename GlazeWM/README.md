# GlazeWM

Window manager em tiling pro Windows (inspirado no i3wm/Polybar do Linux). É ele quem organiza as janelas automaticamente em grade, sem precisar arrastar ou redimensionar manualmente.

## Instalação

Via winget:

```powershell
winget install glzr-io.GlazeWM
```

Ou baixe o instalador direto na [página de releases](https://github.com/glzr-io/glazewm/releases).

## Onde vai a configuração

```
%userprofile%\.glzr\glazewm\config.yaml
```

Na primeira vez que o GlazeWM abre, ele cria esse arquivo sozinho com uma config padrão. Depois é só substituir o conteúdo pelo [`config.yaml`](./config.yaml) desta pasta.

## O que essa config faz

- Inicia o **Zebar** automaticamente junto com o WM (`startup_commands`)
- Bordas coloridas: rosa na janela em foco, cinza nas outras — recurso exclusivo do Windows 11
- 9 workspaces virtuais, navegáveis por `Alt + 1` a `Alt + 9`
- Atalhos de foco/movimento em `Alt + H/J/K/L` (estilo Vim)
- Modo "resize" (`Alt + R`) pra redimensionar a janela com HJKL/setas
- Ignora janelas que não fazem sentido tilar: o próprio Zebar, Picture-in-Picture de navegador, PowerToys, Lively

## Recarregar depois de editar

Com o GlazeWM já rodando, `Alt + Shift + R` recarrega a config sem precisar reiniciar o processo.

## Atalhos principais

| Atalho | Ação |
|---|---|
| `Alt + H/J/K/L` | Mover foco entre janelas |
| `Alt + Shift + H/J/K/L` | Mover a janela de posição |
| `Alt + 1..9` | Ir pra workspace |
| `Alt + Shift + 1..9` | Mover a janela pra workspace |
| `Alt + T` / `Alt + F` | Tiling / Fullscreen |
| `Alt + Shift + Space` | Floating |
| `Alt + R` | Ativar modo resize |
| `Alt + Shift + Q` | Fechar janela em foco |
| `Alt + Shift + E` | Sair do GlazeWM |

## Problema comum

Se uma janela específica (ex: WezTerm) não estiver tilando e ficar sempre floating/centralizada, o problema geralmente não é aqui — é a configuração de decoração da própria janela removendo a borda que o GlazeWM usa pra detectá-la. Veja a nota em [`wezterm/README.md`](../wezterm).
