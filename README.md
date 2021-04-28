# How to use

## Fisrt
Go the project's root ( powershell || bash ) and run

```
cp type.vars.json vars.json
```

Modify the vars file to get the correct local path of your iso file, modify check sum if necessary

## Seconde verify

### On windows
```
.\packer.exe validate -var-file="var.json" templateToBuild.json
```

### On linux
```
packer validate -var-file="var.json"  templateToBuild.json
```

## Third build

### On windows
```
.\packer.exe build -var-file="var.json" templateToBuild.json
```

### On linux
```
packer build -var-file="var.json"  templateToBuild.json
```