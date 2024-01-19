# install requirements to run ansible

# ensure root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

# install required packages
apt-get update
apt-get install -y python-pip python-dev libffi-dev libssl-dev git sshpass ansible 

# install required python modules
pip install pywinrm pypsrp
