# Zebar

Barra de status usada junto com o [GlazeWM](../glazewm). Diferente das outras ferramentas deste repositório, o Zebar tem duas peças, geralmente em lugares diferentes:

1. **`settings.json`** — diz qual widget pack / widget / preset carregar quando o Zebar inicia
2. **O widget pack em si** — os arquivos HTML + CSS que definem o visual da barra

## ⚠️ Importante: não edite o pacote do marketplace direto

Se você instala um tema pela loja embutida do Zebar, ele fica em cache aqui:

```
%APPDATA%\zebar\downloads\<pacote>@<versão>\
```

Dá pra editar esses arquivos direto, mas **qualquer atualização do pacote sobrescreve suas mudanças**. A recomendação oficial do Zebar é copiar o pacote pra dentro do seu próprio `.glzr\zebar` antes de mexer — foi isso que fizemos aqui. A pasta [`starter/`](./starter) deste repositório é essa cópia "sua", já independente do cache.

## Onde vai cada arquivo

| Deste repositório | Caminho real no Windows |
|---|---|
| [`settings.json`](./settings.json) | `%userprofile%\.glzr\zebar\settings.json` |
| [`starter/`](./starter) | `%userprofile%\.glzr\zebar\starter\` |

## Migrando do cache pra sua pasta (primeira vez)

Se você instalou o pacote `glzr-io.starter` pela loja, roda isso **uma vez** pra "adotar" ele:

```powershell
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.glzr\zebar\starter" | Out-Null
Copy-Item "$env:APPDATA\zebar\downloads\glzr-io.starter@0.0.0\*" -Destination "$env:USERPROFILE\.glzr\zebar\starter" -Recurse -Force
```

Depois, no `settings.json`, o campo `"pack"` passa a apontar pro nome da pasta nova (`starter`) em vez do nome do pacote do marketplace (`glzr-io.starter`) — isso já vem assim no `settings.json` deste repositório.

Reinicia o Zebar. A barra deve continuar igual, só que lendo da sua pasta agora, não mais do cache.

## O que tem na pasta `starter/`

- **`zpack.json`** — manifesto do pacote: define os 3 widgets disponíveis (`vanilla`, `with-glazewm`, `with-komorebi`) e o preset padrão de cada um
- **`styles.css`** — já customizado com paleta **monocromática** (preto/branco/cinza), pra combinar com o wallpaper. É compartilhado pelos 3 widgets
- **`vanilla.html`, `with-glazewm.html`, `with-komorebi.html`, `resources/`** — arquivos originais do pacote (HTML de cada widget + imagem de preview). **Copie eles da sua pasta local pra cá** antes de subir pro Git — não vieram junto porque não foram enviados no chat

## Widget em uso

`with-glazewm` — mostra os workspaces do GlazeWM e integra direto com ele.

## O que já foi mudado no `styles.css`

| Elemento | Antes | Depois |
|---|---|---|
| Ícones | Azul acinzentado (`LightSteelBlue` / `rgba(115 130 175)`) | Cinza puro |
| Fundo (modo escuro) | Gradiente com leve tom roxo | Gradiente neutro, preto/cinza |
| Workspace em foco | Azul puro (`rgb(75 115 255)`) | Branco translúcido, mais forte que os demais workspaces |
| Aviso de CPU alta | Vermelho escuro (`#900029`) | Branco em negrito |

## Próximos passos (configuração mais complexa)

Layout, novos módulos e providers diferentes continuam sendo editados dentro dessa mesma pasta `starter/`. Referência: [repositório oficial do Zebar](https://github.com/glzr-io/zebar).
