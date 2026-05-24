# SSH Configuration

## Decisões tomadas
- Porta alterada para 26111
- Password auth mantido temporariamente
- MFA via PAM (Google Authenticator)
- Root login desabilitado

## Motivo
Reduzir exposição a scans automáticos e aumentar segurança local.

## Observação
A porta 26111 não aumenta segurança real, apenas reduz ruído.
