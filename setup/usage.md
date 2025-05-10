# Usage Guide for Self-Hosted Git Server

This document provides instructions on how to interact with the self-hosted Git server, including cloning repositories, pushing changes.

---

## 1. Configure SSH Alias

To simplify access to your Git server, you can create an SSH alias in your `~/.ssh/config` file. Open the file for editing:

```bash
nano ~/.ssh/config
```

Then, add the following configuration (replacing `<preferred-name>` with your chosen alias and `<server-ip>` with your server's IP address):

```bash
Host <preferred-name>
  HostName <server-ip>
  User git
  IdentityFile ~/.ssh/id_rsa
```

Save and close the file. After that, you can use the alias `ssh <preferred-name>` to connect to the Git server.

---

## 2. Clone a Repository

To clone a repository from your self-hosted Git server, use the following command:

```bash
git clone git@<preferred-name>:/opt/git/ssh-git-server.git
```

This command clones the repository to your local machine.

---

## 3. Add Files and Commit Changes

Navigate to your cloned repository directory:

```bash
cd ssh-git-server
```

Add new or modified files:

```bash
git add <filename>
```

Commit changes:

```bash
git commit -m "Commit message describing changes"
```

---

## 4. Push Changes to the Server

Push your changes back to the self-hosted Git server:

```bash
git push origin main
```

This uploads your local commits to the server.

---

## 5. Pull Changes from the Server

To pull the latest changes from the self-hosted Git server:

```bash
git pull origin main
```

This updates your local repository with the latest commits from the server.

---

## 6. Create New Branches

To create a new branch for feature development:

```bash
git checkout -b <branch-name>
```

After making changes, push the branch to the server:

```bash
git push origin <branch-name>
```

---

## 7. Merging Branches

To merge a feature branch back into the `main` branch:

```bash
git checkout main
git merge <branch-name>
git push origin main
```
