$workDir = $args[0]
Write-Host 'clean robomongo shell'
cd $workDir
cmd.exe /c 'bin\clean.bat'
