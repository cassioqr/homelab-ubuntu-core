# Homelab Ubuntu Core (DevOps / SRE Lab)

Projeto de infraestrutura que simula um ambiente de servidor Linux próximo de produção usando Ubuntu Server 24.04.4 LTS.

## Objetivo

Construir um ambiente de homelab reproduzível, seguro e de fácil manutenção, focado em:

- Administração de sistemas Linux
- Acesso remoto seguro (SSH + MFA)
- Gerenciamento de serviços
- Isolamento de rede
- Documentação operacional (runbooks)

---

## Arquitetura Atual

- Ubuntu Server 24.04.4 LTS
- SSH (custom port 26111)
- MFA via PAM (TOTP / Google Authenticator)
- Cockpit para gerenciamento do sistema
- Rede com IP estático (LAN)
- Sem LVM (decisão de simplicidade)

---

## Modelo de Segurança

- Root login disabled
- Login por senha enabled
- MFA obrigatório para autenticação por senha
- Autenticação por chave SSH suportada
- Estratégia de firewall: UFW

---

## Filosofia

- Simplicidade acima de complexidade
- Reprodutibilidade acima de configuração manual
- Segurança por design (não por obscuridade)
- Clareza operacional acima de proliferação de ferramentas

---

## Documentação

Veja a pasta '/docs' para o design completo do sistema, processo de setup e detalhes operacionais.


# Quick Start

This project can be deployed using the bootstrap script.

## Steps

1. Clone the repository:
````
git clone https://github.com/cassioqr/homelab-ubuntu-core.git
cd homelab-ubuntu-core
````

2. Make script executable:
```
chmod +x scripts/bootstrap.sh
```

3. Run bootstrap
```
sudo ./scripts/bootstrap.sh
```

## Important
Run as sudo
Intended for Ubuntu Server 24.04.4 
Will modify SSH and firewall settings
