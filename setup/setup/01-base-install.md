# Base Installation (Ubuntu Server 24.04)

## Contexto
Instalação realizada em notebook físico para homelab.

---

## Durante instalação

### Storage
- Particionamento manual (sem LVM)
- /boot/efi (512MB)
- / (root)
- /home separado

---

### Network
- IP fixo configurado: 192.168.0.205
- Subnet: /24
- Gateway: roteador local

---

### SSH
- OpenSSH instalado durante setup
- Password authentication temporariamente habilitado
- Chave SSH será adicionada pós-instalação
