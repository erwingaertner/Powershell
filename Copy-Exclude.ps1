$source = 'C:\Test1'
$dest = 'C:\Test2'
$exclude = @('*.pdf','*.txt')
Get-ChildItem $source -Recurse -Exclude $exclude | Copy-Item -Destination {Join-Path $dest $_.FullName.Substring($source.length)}
