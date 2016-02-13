cd $args[0]
$robomongoDist = (Get-ChildItem *.exe | % { $_.FullName })
curl.exe --insecure -i -X POST -H "Content-Type: multipart/form-data" -F "image=@$robomongoDist" $args[1]

$robomongoDist = (Get-ChildItem *.zip | % { $_.FullName })
curl.exe --insecure -i -X POST -H "Content-Type: multipart/form-data" -F "image=@$robomongoDist" $args[1]
