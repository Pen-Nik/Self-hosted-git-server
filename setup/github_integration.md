# GitHub Integration Guide

This guide documents how to connect a self-hosted Git server project with GitHub using SSH.

---

## 1. Generate SSH Key Pair (on local machine)

Run the following command to generate an SSH key pair:

```bash
ssh-keygen -t rsa -b 4096 -C "your-email@example.com"
```

Press Enter to save it in the default location: `~/.ssh/id_rsa`.

---

## 2. Add Public Key to GitHub

Display your public key:

```bash
cat ~/.ssh/id_rsa.pub
```

Go to your GitHub account:

- Navigate to **Settings > SSH and GPG keys**
- Click **New SSH key**
- Paste the key and save

---

## 3. Verify SSH Connection to GitHub

#Ensure server is running before testing connection.

Test the SSH authentication:

```bash
ssh -T git@github.com
```

Expected output:

```
Hi <github-username>! You've successfully authenticated, but GitHub does not provide shell access.
```

---

## 4. Link GitHub Repository to Local Repository

Inside your local project directory:

```bash
git remote add origin git@github.com:<github-username>/<repo-name>.git
```

Verify it:

```bash
git remote -v
```

You should see:

```
origin  git@github.com:<Github-username>/<repo-name>.git (fetch)
origin  git@github.com:<Github-username>/<repo-name>.git (push)
```

---

## 5. Push Local Repository to GitHub

```bash
git push -u origin main
```

This will upload your self-hosted Git project to GitHub.
