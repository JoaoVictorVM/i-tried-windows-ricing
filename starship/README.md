# Starship

Prompt customizado do terminal — alternativa mais simples ao [oh-my-posh](../oh-my-posh). Troca o `PS C:\Users\voce>` padrão do PowerShell por uma cápsula única: ícone de pasta + caminho numa linha, seta na debaixo.

## Instalação

```powershell
winget install --id Starship.Starship
```

## Onde vai a configuração

```
%userprofile%\.config\starship.toml
```

## Ativar no PowerShell

Copie [`Microsoft.PowerShell_profile.ps1`](./Microsoft.PowerShell_profile.ps1) desta pasta para:

```
C:\Users\<VOCE>\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
```

**Importante**: se você for usar o [oh-my-posh](../oh-my-posh) em vez deste, use o `Microsoft.PowerShell_profile.ps1` de lá — nunca os dois ao mesmo tempo.

## O que essa config faz

- Mostra só dois módulos: diretório atual e o caractere de digitação — qualquer outra informação que o Starship detectaria por padrão (git, versão de linguagem, etc.) fica de fora de propósito
- O ícone de pasta é escrito como código Unicode (`\uf07b`) em vez do caractere colado direto — editores como o Notepad podem corromper esse tipo de caractere especial ao salvar, e o escape evita esse problema
- Seta branca quando o último comando deu certo, vermelha quando deu erro
- Colapsa pro nome da pasta quando ela é raiz de um repositório git (`truncate_to_repo`)

## Requisito

Precisa de uma Nerd Font instalada **e** configurada como fonte no seu terminal (veja [`wezterm/`](../wezterm)). Sem isso, o ícone de pasta aparece como um quadrado vazio ou simplesmente não aparece.

## Testar se a fonte suporta o ícone

```powershell
Write-Host ([char]0xf07b)
```

## Quando escolher este em vez do oh-my-posh

Este é mais simples de configurar e não tem nenhuma dependência de script externo. Se você quer o visual de cada pasta do caminho com uma cor de fundo diferente (estilo powerline "de verdade"), isso só é possível hoje com o [oh-my-posh](../oh-my-posh) — o Starship trata o caminho inteiro como um bloco só de estilo.
