# SSH Hardening

## Configuration

- Port: 26111
- Root login: disabled
- Password auth: enabled
- MFA: enabled via PAM
- Keyboard-interactive authentication enabled
- Chave SSH enabled

## Motivo

Mudança de porta reduz ruidos de scans automaticos em cenário de contato com internet aberta (não é feito por segurança)

MFA adiciona uma segunda autenticação em acessos via senha.


