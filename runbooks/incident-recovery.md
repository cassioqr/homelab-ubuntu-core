# Incident Recovery Runbook

## Scenario: SSH access lost

1. Access local console or physical machine
2. Check SSH service:
   systemctl status ssh
3. Validate config:
   sshd -t
4. Restart service:
   systemctl restart ssh

## Scenario: MFA lockout

- Use backup scratch codes
- Reinitialize Google Authenticator PAM module
