$workDir = $args[0]

winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="4096"}'
Write_Host (Get-Item WSMan:\localhost\Shell\MaxMemoryPerShellMB).Value
cd $workDir
cmd.exe /c c:\Users\vagrant\vcvars64.bat
bin\build
