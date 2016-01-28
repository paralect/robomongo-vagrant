$repoUrl = $args[0]
$repoBranch = $args[1]
$checkoutDir = $args[2]

cd $checkoutDir
$repoExists = Test-Path .git
If ($repoExists -eq $False) {
  git clone $repoUrl ./
  git checkout $repoBranch
}
Else {
  git pull origin $repoBranch
}

Write-Host 'finished pulling repo' $repoUrl
