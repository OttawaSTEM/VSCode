# echo $profile
# New-Item -Path $profile -Type File -Force
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
function prompt {
  try {
    $GitBranch = git branch --show-current
    # ß$PWD = Split-Path -leaf -path (Get-Location)
  } catch {}

  if ($GitBranch) { $GitBranch = " [`e[33;91m$GitBranch`e[0m]" }
  
  $K8sContext = kubectx -c
  $K8sNamespace = kubens -c
  If ($K8sContext -and $K8sNamespace) {
    $K8S = "[`e[1;33m$K8sContext`:$K8sNamespace`e[0m] `n"
  }
  
  "PS $K8S$PWD$GitBranch> "
}

Set-Alias k kubectl
Set-Alias kctx kubectx
Set-Alias kns kubens
Set-Alias l dir

# Terraform
Set-Alias tfl "terraform state list"
Set-Alias tfs "terraform state list"
Set-Alias tfv "terraform validate"
