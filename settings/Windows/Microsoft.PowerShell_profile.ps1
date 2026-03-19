# echo $profile
# New-Item -Path $profile -Type File -Force
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser

$ESC = [char]0x1b
$RESET = "$ESC[0m"
$BLUE = "$ESC[94m"
$CYAN = "$ESC[96m"
$GREEN = "$ESC[92m"
$GRAY = "$ESC[90m"
$MAGENTA = "$ESC[95m"
$RED = "$ESC[91m"
$WHITE = "$ESC[97m"
$YELLOW = "$ESC[93m"

function prompt {
  try {
    $GitBranch = git branch --show-current
    # $PWD = Split-Path -leaf -path (Get-Location)
  } catch {}

  if ($GitBranch) { 
    $GitBranch = "[$($RED)$GitBranch$($RESET)]"
  }

  "PS $PWD $GitBranch>`n"
}

Set-Alias l Get-ChildItem
Set-Alias kctx kubectx
Set-Alias kns kubens
