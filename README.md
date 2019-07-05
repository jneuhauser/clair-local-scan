# Installation

```
git clone https://github.com/jneuhauser/clair-scanner
cd clair-scanner
sudo ./install_clair_scanner.sh
docker-compose up
```

Wait until clair has synced the database... This will take some minutes.

Then stop clair and database with STRG+C and start services in background with:
```
docker-compose up -d
```

# Usage

```
docker pull debian:stretch
clair-scanner debian:stretch
```
