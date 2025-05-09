
# Install Git
sudo apt update
sudo apt install -y git

# Create a git user
sudo adduser --disabled-login --gecos "" git

# Create SSH directory
sudo mkdir -p /home/git/.ssh
sudo chmod 700 /home/git/.ssh

# Set up authorized keys (to be added manually)
sudo touch /home/git/.ssh/authorized_keys
sudo chmod 600 /home/git/.ssh/authorized_keys
sudo chown -R git:git /home/git/.ssh

# Set up a Git repository
sudo mkdir -p /home/git/repositories
sudo chown git:git /home/git/repositories

echo "Git server setup complete."

# Instructions for Use
echo "To use this script, run the following commands:"
echo "1. Make the script executable: chmod +x install_git_server.sh"
echo "2. Run the script: ./install_git_server.sh"