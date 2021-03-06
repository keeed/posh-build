$keyfile = "~/Dropbox/powershellgallery-access-key.txt"

if(-not (test-path $keyfile)) {
  throw "Could not find the NuGet access key at $keyfile."
}

$key = get-content (Resolve-Path $keyfile)

write-host Publishing...
Publish-Script -Path .\Posh-Build.ps1 -NuGetApiKey  $key
write-host Done.
