# Proxmox VE script to create   KrakenD  + node 
qm create 701 \
  --name krakend-rocky96 \
  --memory 4096 \
  --cores 2 \
  --cpu host \
  --sockets 1 \
  --net0 virtio,bridge=vmbr1 \
  --ide2 local:iso/Rocky-9.6-x86_64-minimal.iso,media=cdrom \
  --virtio0 local-lvm:20 \
  --ostype l26 \
  --agent 1 \
  --boot order=ide2

# Actualizar repositorios
# Actualizar sistema
apt update && apt upgrade -y
# Instalar dependencias
apt install -y curl wget git build-essential





   