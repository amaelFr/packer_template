Write-Host "Install tools"

if (Test-Path "E:\guest-agent\qemu-ga-x86_64.msi") {
    Write-Host "Will install qemu agent"
    C:\Windows\System32\msiexec.exe /I E:\guest-agent\qemu-ga-x86_64.msi /quiet 
}elseif (Test-Path "E:\VBoxWindowsAdditions.exe") {
    Write-Host "Will install virtual box agent"
    cmd /c "E:\cert\VBoxCertUtil" add-trusted-publisher "E:\cert\vbox-sha1.cer" --root "E:\cert\vbox-sha1.cer"
    cmd /c "E:\cert\VBoxCertUtil" add-trusted-publisher "E:\cert\vbox-sha256.cer" --root "E:\cert\vbox-sha256.cer"
    cmd /c E:\VBoxWindowsAdditions.exe /S
}elseif (Test-Path "C:\Windows\Temp\vmware-tools.iso") {
    Write-Host "Will install vmware tools"
    Mount-DiskImage -ImagePath "C:\Windows\Temp\vmware-tools.iso"
    E:\setup.exe /S /v "/qn REBOOT=R"
    Start-Sleep -Seconds 60
    Dismount-DiskImage -ImagePath "C:\Windows\Temp\vmware-tools.iso"
    rm -Force "C:\Windows\Temp\vmware-tools.iso"
}