#!/usr/bin/env bash
set -e

echo "=== HOMELAB BOOTSTRAP START ==="

# -------------------------
# 1. Update system
# -------------------------
echo "[1/7] Updating system..."
apt update && apt upgrade -y

# -------------------------
# 2. Base packages
# -------------------------
echo "[2/7] Installing base packages..."
apt install -y \
  git curl wget vim htop btop ncdu tmux unzip zip jq tree ufw

# -------------------------
# 3. Cockpit
# -------------------------
echo "[3/7] Installing Cockpit..."
apt install -y cockpit cockpit-storaged
systemctl enable --now cockpit.socket

# -------------------------
# 4. SSH hardening
# -------------------------
echo "[4/7] Configuring SSH..."

SSHD_CONFIG="/etc/ssh/sshd_config"

cp $SSHD_CONFIG ${SSHD_CONFIG}.bak

cat > $SSHD_CONFIG <<EOF
Port 26111
PermitRootLogin no
MaxAuthTries 3
PasswordAuthentication yes
PermitEmptyPasswords no
KbdInteractiveAuthentication yes
UsePAM yes
X11Forwarding no
PrintMotd no
AuthenticationMethods publickey keyboard-interactive
EOF

systemctl restart ssh

# -------------------------
# 5. Firewall (UFW)
# -------------------------
echo "[5/7] Configuring firewall..."

ufw allow 26111/tcp
ufw allow 9090/tcp

ufw --force enable

# -------------------------
# 6. MFA setup reminder
# -------------------------
echo "[6/7] MFA setup (manual step required)"

echo "
IMPORTANT:
Run manually after login:

  google-authenticator

This cannot be fully automated safely.
"

# -------------------------
# 7. Final message
# -------------------------
echo "[7/7] Done!"

echo "=== BOOTSTRAP COMPLETE ==="
echo "Next steps:"
echo "- Configure SSH key"
echo "- Run google-authenticator for MFA"

