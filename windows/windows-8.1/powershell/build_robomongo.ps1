$workDir = $args[0]
cd $workDir

winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="4096"}'
$env:ROBOMONGO_CMAKE_PREFIX_PATH = $args[1]
bin\configure
bin\build
bin\install
bin\pack
