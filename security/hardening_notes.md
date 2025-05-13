# Hardening Notes for Self-Hosted Git Server

This document outlines the security measures taken to secure the self-hosted Git server.

---

## 1. Secure SSH Access

- **Disable password-based authentication:**

In `/etc/ssh/sshd_config`, ensure the following lines are set:

```bash
PasswordAuthentication no
ChallengeResponseAuthentication no
UsePAM no
```

- **Limit root login:**

```bash
PermitRootLogin no
```

- **Use SSH keys for authentication:**

Ensure you are using SSH keys for access, and disable password authentication as mentioned above.

---

## 2. Firewall Configuration

- **Allow only necessary ports:**

Set up firewall to allow only SSH (port 22) for access and block unnecessary ports.

```bash
sudo ufw allow 22/tcp
sudo ufw enable
```

---

## 3. Regular Security Audits

- **Check for open ports regularly** with `nmap`:

```bash
nmap <server-ip>
```

- **Monitor server logs** for unauthorized access attempts:

```bash
sudo tail -f /var/log/auth.log
```

---

## 4. Backup and Recovery Plan

- Ensure backups of the Git repositories and system configurations are scheduled and stored securely.
