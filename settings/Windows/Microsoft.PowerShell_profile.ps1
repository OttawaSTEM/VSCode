# echo $profile

# Git branch in Prompt  
function prompt {
  try {
    $GitBranch = git branch --show-current
    $PWD = Split-Path -leaf -path (Get-Location)
  } catch {}

  if ($GitBranch) { $GitBranch = " `e[33;91m[$GitBranch]`e[0m" }
  
  $K8sContext = kubectx -c
  $K8sNamespace = kubens -c
	If ($K8sContext -and $K8sNamespace) {
		$K8S = "`e[1;33m[$K8sContext`:$K8sNamespace]`e[0m "
	}
  
  "PS $K8S$PWD$GitBranch> "
}

# Kubectl Alias
Set-Alias k kubectl
Set-Alias l dir
