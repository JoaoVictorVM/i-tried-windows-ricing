# YASB (Yet Another Status Bar)

Barra de status usada junto com o [Komorebi](../komorebi), alternativa ao [Zebar](../zebar) com mais widgets prontos (taskbar, systray, wifi, idioma, etc). Parte da **v2** deste setup.

## Instalação

```powershell
winget install amnweb.YASBReborn
```

> Se o comando acima não encontrar o pacote, procure com `winget search yasb` — o nome do pacote muda ocasionalmente entre versões do projeto.

## Onde vai a configuração

```
%userprofile%\.config\yasb\config.yaml
%userprofile%\.config\yasb\styles.css
```

## Layout de widgets

| Posição | Widgets |
|---|---|
| Esquerda | Áreas de trabalho (Komorebi) → Ícones dos apps abertos (taskbar) |
| Centro | Data / hora / dia da semana |
| Direita | Mídia tocando → Ícones ocultos (systray) → Volume → Wi-Fi → Idioma → Trocar wallpaper |

## O que essa config faz

- Paleta monocromática própria (preto + branco com opacidade), independente das ~20 variáveis de cor do tema original — mais enxuta e consistente com o Zebar e as bordas do Komorebi
- Áreas de trabalho em formas diferentes por estado (não cor): círculo vazado = vazia, losango = com janela, círculo cheio = em foco. Some workspace vazias da barra (`hide_empty_workspaces: true`)
- Ícones ocultos aparecem direto na barra, sem dropdown (`show_in_popup: false`)
- `strict_filtering: false` no taskbar — necessário porque o Komorebi altera propriedades da janela, e o filtro rigoroso padrão do YASB rejeitava elas (mesmo tipo de problema que tivemos com WezTerm + GlazeWM)

## ⚠️ Antes de usar

- **Wallpaper**: `image_path` no `config.yaml` precisa apontar pra sua pasta de wallpapers de verdade
- **Espaçamento das pontas**: o padding fica no `styles.css` (`.container-left` / `.container-right`), **não** no `padding` do `config.yaml` — aquela opção encolhe o fundo da barra inteira e deixa o wallpaper aparecendo nas pontas, em vez de só afastar os itens
- Ícones de apps na taskbar e na bandeja mantêm as cores originais de cada programa — o Windows não permite recolorir ícone de terceiro

## Recarregar depois de editar

Reinicie o YASB, ou use `yasbc reload` se tiver o CLI instalado.
