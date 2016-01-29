$workDir = $args[0]

cd $workDir
bin\clean
Remove-Item -Recurse -Force build
