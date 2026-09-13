# Liga o oh-my-posh como prompt do PowerShell.
# A configuração visual do prompt (cápsulas coloridas por nível de
# pasta) fica em theme.omp.json, nesta mesma pasta.
oh-my-posh init pwsh --config "$env:USERPROFILE\.config\oh-my-posh\theme.omp.json" | Invoke-Expression
