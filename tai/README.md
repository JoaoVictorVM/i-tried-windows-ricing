# TAI (Taskbar As Island)

Mod do Windhawk que transforma a taskbar num "dock" flutuante: centraliza tudo — ícones dos apps abertos **e** a bandeja do sistema (ícones ocultos, rede, som) — num grupo só, e move os flyouts (Menu Iniciar, Central de Controle, Central de Notificações) pra abrirem alinhados com essa nova posição, em vez de ficarem grudados no canto.

Repositório oficial: [DarkionAvey/windhawk-taskbar-centered-condensed](https://github.com/DarkionAvey/windhawk-taskbar-centered-condensed)

## ⚠️ Instalação diferente dos outros mods

O TAI não está na busca padrão do Windhawk — é um mod "cru", instalado colando o código-fonte direto:

1. Abre [`assembled-mod.cpp`](https://raw.githubusercontent.com/DarkionAvey/windhawk-taskbar-centered-condensed/main/assembled-mod.cpp) e copia **todo** o conteúdo (Ctrl+A, Ctrl+C)
2. No Windhawk: aba **Explore** → **Create a new mod**
3. No editor que abrir: Ctrl+A (seleciona o que já vem escrito) → Ctrl+V (cola o código copiado)
4. Clica em **Compile Mod**, no canto superior esquerdo
5. Ajusta as opções (lista completa abaixo) e testa

Por ser código de terceiro compilado na hora (não vem da lista curada do Windhawk), vale conferir a fonte antes de colar — é open source, do autor `DarkionAvey`, com bom histórico de estrelas/atividade no GitHub.

## ⚠️ Conflitos conhecidos

- **Desative outros mods de altura/tamanho de taskbar** antes de ativar o TAI — ele já inclui essas features, e dois mods mexendo na mesma coisa costuma causar overlap de ícones.
- **Não use um `"theme"` pronto no Windows 11 Taskbar Styler** junto com o TAI (deixe `""` vazio) — veja a nota em [`windhawk/README.md`](../windhawk). Só `controlStyles` pontuais (tipo trocar o ícone do botão Iniciar) convivem bem com o TAI.
- **Central de Notificações às vezes não acompanha a nova posição**, mesmo com `MoveFlyoutNotificationCenter` ligado — parece ser uma limitação do próprio mod nesse flyout específico (Menu Iniciar e Central de Controle funcionam certinho). Sem solução encontrada ainda; se achar, [reporta no repositório](https://github.com/DarkionAvey/windhawk-taskbar-centered-condensed/issues).

## Configuração usada neste setup

Ponto de partida pra manter o visual fino/monocromático do resto do rice — **ajuste conforme sua tela/DPI**, alguns desses valores podem precisar de calibração fina caso apareça overlap entre os ícones da bandeja e dos apps:

| Opção | Valor | Motivo |
|---|---|---|
| `TaskbarHeight` | `40` | Mais fino que o padrão (74), combina com a altura do Zebar/YASB |
| `TaskbarIconSize` | `20` | Proporcional à barra mais fina |
| `TaskbarButtonSize` | `32`* | Área de clique com respiro |
| `TrayIconSize` | `20` | Igual ao `TaskbarIconSize` — evita o desalinhamento entre ícone de app e ícone de bandeja |
| `TrayButtonSize` | `32`* | Igual ao `TaskbarButtonSize` |
| `StyleTrayArea` | `true` | Sem isso, os dois valores de tray acima não têm efeito |
| `TaskbarCornerRadius` | `14` | Mesma faixa das cápsulas do Starship/oh-my-posh |
| `TaskButtonCornerRadius` | `10` | Levemente menor que o da barra |
| `FullWidthTaskbarBackground` | `false` | Mantém flutuante, não esticada de ponta a ponta |
| `TaskbarBackgroundFallbackColor` | `#0d0d0f` | Preto quase puro, padrão do rice |
| `TaskbarBackgroundTintColor` | `#0d0d0f` | Mesma cor, evita puxar tom do sistema |
| `TaskbarBackgroundOpacity` | `90` | Quase opaco |
| `DisableCustomBlurBackground` | `true` | Fundo nítido, sem desfoque |
| `TaskbarBorderColorHex` | `#e6e6e6` | Branco de destaque do rice |
| `TaskbarBorderOpacity` | `12` | Bem sutil — só uma linha fina |
| `TrayAreaDivider` | `true` | Separa visualmente apps de sistema sem precisar de cor |

## Todas as opções

Lista completa (muito mais do que usamos aqui) na [tabela oficial do README](https://github.com/DarkionAvey/windhawk-taskbar-centered-condensed#options) — cobre desde espessura de divisores até regras por nome de app.
