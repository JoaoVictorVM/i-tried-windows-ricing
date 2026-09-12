# Komorebi

Window manager em tiling pro Windows, alternativa ao [GlazeWM](../glazewm) com mais opções de customização (animações, mais layouts de tiling, transparência configurável por janela). Parte da **v2** deste setup.

## Instalação

```powershell
winget install LGUG2Z.komorebi
# WHKD: daemon separado que cuida dos atalhos de teclado do Komorebi
winget install LGUG2Z.whkd
```

> O Komorebi não vem com atalhos de teclado embutidos como o GlazeWM — quem cuida disso é o **WHKD**, um daemon separado. A configuração dele (`whkdrc`) ainda não faz parte deste repositório; quando for montada, ganha sua própria pasta seguindo esse mesmo padrão.

## Onde vai a configuração

```
%userprofile%\komorebi.json
```

(também é possível usar outro caminho com `komorebic start --config <caminho>`, ou definindo a variável de ambiente `KOMOREBI_CONFIG_HOME`)

## O que essa config faz

- **Transparência** de 252/255 (bem sutil) em todas as janelas
- **Bordas monocromáticas**: branco quase puro na janela em foco, cinza escuro fora de foco, cinza médio em janelas floating — mesmo padrão de "intensidade = estado" usado no Zebar
- **Animações** de movimento (`EaseInOutQuad`) e transparência (`Linear`), 150ms
- **2 monitores**, cada um com 3 workspaces e layouts diferentes (`BSP`, `Grid`, `HorizontalStack`)
- **Ignora** apps que não fazem sentido tilar: Explorer, jogos (Overwatch, Assassin's Creed Shadows), players de mídia, Fotos, Files

## Recarregar depois de editar

```powershell
komorebic reload-configuration
```

## Nota sobre o JSON

O Komorebi aceita comentários `//` no arquivo de config (formato JSONC), mas **não aceita vírgula sobrando** depois do último item de uma lista ou objeto — atenção redobrada ao editar à mão.
