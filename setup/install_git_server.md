# Self-Hosted Git Server Setup

This document details the steps taken to install and configure a Git server on a local Linux machine.

---

## 1. Install Git(If not installed)

```bash
sudo apt update
sudo apt install git -y
```

---

## 2. Create a Git User

```bash
sudo adduser git
```

Set a password and complete the prompts.

---

## 3. Create SSH Directory for Git User

```bash
sudo mkdir -p /home/git/.ssh
sudo chown git:git /home/git/.ssh
sudo chmod 700 /home/git/.ssh
```

---

## 4. Add Developer's Public Key

On your local machine, generate a key if needed:

```bash
ssh-keygen -t rsa -b 4096
```

Copy the public key:

```bash
cat ~/.ssh/id_rsa.pub
```

Paste it into `/home/git/.ssh/authorized_keys` on the server:

```bash
sudo nano /home/git/.ssh/authorized_keys
```

Then:

```bash
sudo chown git:git /home/git/.ssh/authorized_keys
sudo chmod 600 /home/git/.ssh/authorized_keys
```

---

## 5. Create a Bare Git Repository

```bash
sudo mkdir -p /opt/git/ssh-git-server.git
cd /opt/git/ssh-git-server.git
sudo git init --bare
sudo chown -R git:git /opt/git/ssh-git-server.git
```

---

## 6. Test SSH Access to Git Server

From your local machine:

```bash
ssh git@<server-ip>
```

If configured correctly, the connection will succeed, then close automatically or deny shell (if restricted).

---

## 7. Clone the Repository

```bash
git clone git@<server-ip>:/opt/git/ssh-git-server.git
```

Now you're connected to the self-hosted Git server.
