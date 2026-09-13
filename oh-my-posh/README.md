# oh-my-posh

Prompt customizado do terminal — alternativa mais avançada ao [Starship](../starship). Cada nível do caminho (`D:`, `Workspace`, `win11-rice`...) ganha seu próprio "bloco" de fundo, conectado por uma seta de powerline apontando pro próximo.

## Instalação

```powershell
winget install oh-my-posh
```

Precisa de uma Nerd Font instalada (mesma que você já usa nas outras ferramentas).

## Onde vai a configuração

```
%userprofile%\.config\oh-my-posh\theme.omp.json
```

## Ativar no PowerShell

Copie [`Microsoft.PowerShell_profile.ps1`](./Microsoft.PowerShell_profile.ps1) desta pasta para:

```
C:\Users\<VOCE>\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
```

**Importante**: se você estava usando o Starship antes, o `Microsoft.PowerShell_profile.ps1` dele e o daqui fazem a mesma função (ligar o prompt) — use só **um dos dois**, nunca os dois ao mesmo tempo.

## Por que oh-my-posh e não Starship pra esse visual específico

O Starship trata `$path` como um bloco de texto único — não dá pra colorir cada pasta do caminho separadamente sem recorrer a um script externo (PowerShell) rodando a cada prompt, o que testamos e trouxe problemas reais: precisa desbloquear o `.ps1` toda vez que é baixado de novo, e o Starship tem um tempo limite (`command_timeout`) que às vezes não é suficiente pra abrir um processo novo do PowerShell, fazendo o caminho sumir aleatoriamente.

O oh-my-posh resolve isso nativamente: toda a lógica de cores por nível de pasta roda **dentro do próprio processo dele**, usando um template (Go + Sprig) — sem abrir processo nenhum, sem risco de timeout.

## Como o template funciona

O arquivo usa o `template` do segmento `path` pra:

1. Quebrar o caminho em pedaços (`splitList "\\" .Path`)
2. Alternar o fundo de cada pedaço entre dois tons de cinza (`#333333` / `#1a1a1a`)
3. Colocar uma seta de powerline (``) entre cada pedaço, colorida com o fundo do bloco anterior — dá o efeito de "apontar pro próximo"
4. Mostrar o ícone de pasta só no primeiro nível

Se quiser mais tons de cinza alternando (em vez de só 2), é só adicionar mais variáveis `$bgC`, `$bgD`... e ajustar a lógica de `mod` no template.

## Segunda linha (caractere)

Uma seta simples (`→`) abaixo do caminho, branca quando o último comando deu certo. Fica numa "linha de prompt" separada, com uma quebra de linha extra antes dela pra não ficar colada na cápsula do caminho.
