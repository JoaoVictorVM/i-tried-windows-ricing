# YASB

Barra de status usada junto com o [Komorebi](../komorebi). Duas versões nesta pasta — **escolha uma**.

## Versões

| Versão | Estilo | Requisito |
|---|---|---|
| [`v1/`](./v1) | Barra tradicional, retângulo cheio. Workspaces, taskbar, mídia, systray, volume, wifi, idioma, wallpaper, cava, power menu | Qualquer versão do YASB |
| [`v2/`](./v2) | Estilo "adaptive": widgets agrupados em "ilhas" flutuantes com cantos arredondados, mais completo (quick launch, control center, visualizador de áudio nativo, layout do Komorebi) | **YASB 2.0.7 ou mais recente** |

## ⚠️ Antes de usar a v2

O estilo `"adaptive"` (as ilhas flutuantes) só existe a partir da versão **2.0.7** do YASB. Se você tentar usar a config da v2 numa versão mais antiga, vai dar erro de `"Extra inputs are not permitted"` no `style` e no `system_colors`.

Atualize primeiro:

```powershell
winget upgrade amnweb.YASBReborn
```

Se o nome exato não bater, `winget upgrade` sozinho lista tudo que tem atualização pendente — procura o YASB na lista.

## Onde vai a configuração

Mesmo caminho pras duas versões (só o conteúdo dos arquivos muda):

```
%userprofile%\.config\yasb\config.yaml
%userprofile%\.config\yasb\styles.css
```

## O que as duas têm em comum

- Paleta monocromática (preto + branco com opacidade), mesmo padrão do resto do rice
- `border_color` sempre `None`/`none` nos popups, pra não vazar a cor de destaque do Windows
- Caminho de wallpaper já ajustado — confira se ainda bate com a sua pasta antes de usar

## Diferenças da v2

- Layout "adaptive": cada grupo de widgets vira uma ilha flutuante com cantos arredondados, em vez de uma barra retangular única
- Widgets extras: `quick_launch` (busca de apps, `Alt+Space`), `control_center` (central de ações estilo Windows 11, com sliders de volume/brilho/microfone), `audio_visualizer` (nativo do YASB, não precisa do Cava instalado), `komorebi_active_layout` (mostra o layout de tiling atual)
- `system_colors: true` habilitado (não usado ativamente pela nossa paleta, mas disponível caso queira puxar a cor de destaque do Windows em algum widget específico depois)
