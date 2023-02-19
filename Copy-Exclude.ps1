
[System.Data.Common.DBProviderFactories]::GetFactoryClasses() | select InvariantName


$source = 'C:\Users\erwin\Documents\Test1'
$dest = 'C:\Users\erwin\Documents\Test2'
$exclude = @('*.pdf','*.txt')
Get-ChildItem $source -Recurse -Exclude $exclude | Copy-Item -Destination {Join-Path $dest $_.FullName.Substring($source.length)}