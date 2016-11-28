$isoPath = "f:\iso\cn_windows_server_2016_x64_dvd_9327743.iso"
$password = ConvertTo-SecureString -AsPlaintext -Force "clare27104056"

.\NewNanoServerImage.ps1 `
-IsoPath $isoPath `
-TargetPath "f:\Nano.qcow2" `
-Platform "KVM" `
-VirtIODriversISOPath "c:\nanoserver\virtio-win-0.1.126.iso" `
-Storage `
-Compute `
-Packages "Microsoft-NanoServer-IIS-Package" `
-AdministratorPassword $password `
-MaxSize 5000MB
