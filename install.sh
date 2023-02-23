# Install dependencies
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg lsb-release
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo apt-get install -y openssh-server

# Download code
cd ~/Desktop
rm -rf technosys-ecommerce-demo
sudo mkdir technosys-ecommerce-demo
cd technosys-ecommerce-demo
curl -LJ `curl -s https://api.github.com/repos/dartmoon-io/technosys-ecommerce-demo/releases/latest | python3  -c 'import sys, json; print(json.load(sys.stdin)["tarball_url"])'` | tar zxf - --strip=1

# Disable systemd-resolved
sudo systemctl disable systemd-resolved.service
sudo systemctl stop systemd-resolved

sudo rm /etc/NetworkManager/NetworkManager.conf
sudo cp etc/systemd-resolver/NetworkManager.conf /etc/NetworkManager/NetworkManager.conf
sudo service network-manager restart

# Reset the environment
./reset.sh