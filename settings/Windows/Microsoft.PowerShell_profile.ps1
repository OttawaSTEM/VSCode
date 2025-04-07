# echo $profile
# New-Item -Path $profile -Type File -Force
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser

$esc = [char]0x1b
$reset = "$esc[0m"
$blue = "$esc[94m"
$cyan = "$esc[96m"
$green = "$esc[92m"
$gray = "$esc[90m"
$magenta = "$esc[95m"
$red = "$esc[91m"
$white = "$esc[97m"
$yellow = "$esc[93m"

function prompt {
  try {
    $GitBranch = git branch --show-current
    # $PWD = Split-Path -leaf -path (Get-Location)
  } catch {}

  if ($GitBranch) { 
    $GitBranch = "[$($magenta)$GitBranch$($reset)]"
  }

  "PS $PWD $GitBranch>`n"
}
