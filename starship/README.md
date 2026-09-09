# Starship

Prompt customizado do terminal — troca o `PS C:\Users\voce>` padrão do PowerShell pelo visual limpo: ícone de pasta + caminho numa linha, seta na debaixo, sem mais nada.

## Instalação

```powershell
winget install --id Starship.Starship
```

## Onde vai a configuração

```
%userprofile%\.config\starship.toml
```

## Ativar no PowerShell

Precisa da linha abaixo em algum dos seus arquivos de profile — veja [`powershell/`](../powershell) pra detalhes de qual arquivo e por quê:

```powershell
Invoke-Expression (&starship init powershell)
```

## O que essa config faz

- Mostra só dois módulos: diretório atual e o caractere de digitação. Qualquer outra informação que o Starship detectaria por padrão (git, versão de linguagem, etc.) fica de fora de propósito, pro visual ficar limpo
- O ícone de pasta é escrito como código Unicode (`\uf07b`) em vez do caractere colado direto — editores como o Notepad podem corromper esse tipo de caractere especial ao salvar, e o escape evita esse problema
- Seta branca quando o último comando deu certo, vermelha quando deu erro

## Requisito

Precisa de uma Nerd Font instalada **e** configurada como fonte no seu terminal (veja [`wezterm/`](../wezterm)). Sem isso, o ícone de pasta aparece como um quadrado vazio ou simplesmente não aparece.

## Testar se a fonte suporta o ícone

Sem depender do Starship, direto no PowerShell:

```powershell
Write-Host ([char]0xf07b)
```

Se aparecer um ícone de pasta, a fonte está certa e qualquer problema restante é no arquivo de config (geralmente resolvido recriando o arquivo do zero, sem copiar/colar o ícone bruto).
