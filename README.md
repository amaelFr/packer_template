# How to use

## Fisrt

### Install packer
#### Linux got to [packer](https://www.packer.io/downloads)
#### Windows run the following powershell
```
.\getNecessary.ps1
```

### Get isos
use netinstall [debian](https://cdimage.debian.org/debian-cd/current/)
use live server [ubuntu](http://archive.ubuntu.com/ubuntu/dists/bionic-updates/main/installer-amd64/current/images/netboot/)
use boot install [oracle linux](https://yum.oracle.com/oracle-linux-isos.html)
use netinstall [kali](https://www.kali.org/get-kali/#kali-bare-metal)
use minimal [centos](https://www.centos.org/download/)

### Init you packer vars, specific to your envirronment
Go the project's root ( powershell || bash ) and run
```
cp type.vars.json vars.json
```
#### Modify the vars file to get the correct local path of your iso file, modify check sum

## Seconde verify

### On windows
```
.\packer.exe validate -var-file="var.json" templateToBuild.json
```

### On linux
```
packer validate --var-file="var.json"  templateToBuild.json
```

## Third build

### On windows
```
.\packer.exe build -only=vmwareiso -var-file="var.json" templateToBuild.json
```

### On linux
```
packer build -only=vmwareiso -var-file="var.json" templateToBuild.json
```