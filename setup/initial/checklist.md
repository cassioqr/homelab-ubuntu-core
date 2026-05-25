# Initial Setup Checklist - Ubuntu 24.04 Homelab

## Instalação base
- [x] Ubuntu Server 24.04 instalado
- [x] Particionamento manual (EFI + / + /home)
- [x] Sem LVM
- [x] Hostname: lab-core-01

## Rede
- [x] IP fixo configurado (192.168.0.205)
- [x] Subnet configurada (/24)
- [x] DNS definido

## SSH
- [x] OpenSSH instalado
- [x] Porta alterada para 26111
- [x] Password authentication habilitado
- [x] Root login desabilitado

## Segurança
- [x] MFA via Google Authenticator PAM
- [x] Fail2ban instalado/configurado
- [x] Autenticação por chave SSH bypassando o MFA

## Serviços
- [x] Cockpit instalado
- [x] Updates automáticos habilitados (unattended-upgrades)

## Observação
Este checklist representa o estado real pós-instalação manual.

Atualmente, autenticação por chave SSH bypassa o MFA.

Isso é intencional para manter usabilidade no ambiente de homelab.

MFA é aplicado apenas no fluxo de autenticação por senha via PAM.
