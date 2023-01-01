# update system

sudo dnf -y update

# dnf plugin core, docker etc...

sudo dnf -y install dnf-plugins-core

sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf -y update

sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo systemctl start docker
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl start docker
