# Cava

Visualizador de áudio (aquelas barrinhas que reagem ao som) usado pelo widget `cava` do [YASB v1](../yasb/v1). Sem esse programa instalado, o widget fica sem nenhum dado pra mostrar.

Originalmente um projeto Linux, mas o próprio [repositório oficial](https://github.com/karlstav/cava) já dá suporte nativo a Windows.

## Instalação

```powershell
winget install karlstav.cava
```

Ou baixe o instalador `.msi` direto na [página de releases](https://github.com/karlstav/cava/releases) (pega a versão mais recente, `x64`).

**Requisito**: o widget do YASB precisa da versão **0.10.4 ou mais recente** do Cava.

## Sem arquivo de configuração

Diferente das outras pastas deste repositório, aqui não tem `config.yaml` nem `.css` — o Cava em si não precisa de nenhum ajuste. Toda a aparência das barras (altura, cor, gradiente, quantidade de barras) já é controlada direto nas opções do widget `cava`, dentro do `config.yaml` da pasta [`yasb/v1`](../yasb/v1).

## Depois de instalar

1. O instalador já coloca o `cava` no PATH do sistema automaticamente
2. **Feche o YASB por completo** (não só recarregue a config) e abra de novo — ele só reconhece o PATH atualizado numa inicialização nova
3. Se ainda não funcionar, reinicie o PC (o próprio YASB recomenda isso como último recurso)

## Testando se instalou certo

```powershell
cava --version
```

Se retornar um número de versão, o binário está acessível e o widget do YASB deve conseguir usá-lo.
