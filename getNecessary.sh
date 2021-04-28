
CACHEDIR=./cache

mkdir -p $CACHEDIR/{vmware,virtualbox,qemu}

curl -L https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso -o $CACHEDIR/qemu/virtio-win.iso

# VMWARETOOLSLINK="https://packages.vmware.com/tools/esx/latest/windows/"
# ISO=$(curl $VMWARETOOLSLINK | egrep -o "[^\"]+.iso\"" | tr -d "\"")
# curl ${VMWARETOOLSLINK}${ISO} -o $CACHEDIR/vmware/vmware-tools.iso


# VIRTUALBOXTOOLSLINK="http://download.virtualbox.org/virtualbox"
# VIRTUALBOXVERSION=$( curl "$VIRTUALBOXTOOLSLINK/LATEST-STABLE.TXT" )
# VIRTUALBOXISO=$( curl "$VIRTUALBOXTOOLSLINK/$VIRTUALBOXVERSION | egrep -o "[^\"]+.iso\"" | tr -d "\"" )
# curl ($VIRTUALBOXTOOLSLINK+"/"+$VIRTUALBOXVERSION+"/"+$VIRTUALBOXISO) -o $CACHEDIR/virtualbox/virtualbox-tools.iso