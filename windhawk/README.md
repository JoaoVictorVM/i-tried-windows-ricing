# Windhawk

[Windhawk](https://windhawk.net) é uma plataforma de mods pro shell do Windows — cada mod injeta customizações em partes específicas da interface (Start Menu, barra de tarefas, central de notificações, etc), sem precisar recompilar nada do sistema.

## Instalação

Baixe e instale pelo [windhawk.net](https://windhawk.net/). Cada mod é instalado separadamente de dentro do próprio programa: aba **Mods** → buscar pelo nome → **Install**.

## Mods usados

| Mod | Customizado por código? | Arquivo |
|---|---|---|
| **Windows 11 Notification Center Styler** | Sim | [`notification-center-styler.json`](./notification-center-styler.json) |
| **Windows 11 Start Menu Styler** | Sim | [`start-menu-styler.json`](./start-menu-styler.json) |
| **Windows 11 Taskbar Styler** | Não — configurado direto pela interface do mod | — |
| **Resource Redirect** | Não — configurado direto pela interface do mod | — |

Os dois últimos não têm arquivo aqui porque a configuração foi feita manualmente nos controles do próprio mod (sliders, dropdowns, toggles), sem editar um JSON — não tem o que exportar/versionar ainda. Se um dia esses ajustes forem feitos via config (o Windhawk permite editar em modo "avançado"/JSON pra praticamente todo mod), essa pasta ganha os arquivos correspondentes.

## Onde entram os arquivos `.json`

Cada mod tem sua própria configuração — não existe um arquivo único pra todos. Dentro do Windhawk:

1. Abra o mod (**Windows 11 Notification Center Styler** ou **Windows 11 Start Menu Styler**) na aba **Mods**
2. Vá em **Settings** do mod
3. Ative o modo de edição avançada/JSON (ícone de `{ }` ou similar, dependendo da versão)
4. Cole o conteúdo do arquivo correspondente

## O que essas duas configs fazem

Customizam a aparência (cor de fundo, texto, cantos arredondados, destaque de botões) da Central de Notificações/Central de Controle e do Menu Iniciar, na mesma paleta monocromática (preto + cinza + branco) usada no resto deste setup. As cores ficam concentradas nas primeiras entradas `styleConstants` de cada arquivo — o resto do JSON só referencia essas variáveis, então dá pra reajustar o tom geral trocando só ali.

| Papel | Cor |
|---|---|
| Fundo principal | `#121212` |
| Fundo secundário | `#1c1c1c` |
| Texto principal | `#d0d0d0` |
| Texto secundário / borda | `#8a8a8a` |
| Destaque (botão de mídia, toggle ativo) | `#f2f2f2` |
