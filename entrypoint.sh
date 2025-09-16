#!/bin/sh

if [ ! -f /app/index.php ]; then
    echo "[INFO] /app is empty. Downloading SLiMS..."
    
    curl -L -o /tmp/slims.zip https://github.com/slims/slims9_bulian/releases/download/v9.7.1/slims9_bulian-9.7.1.zip
    
    echo "[INFO] Unzipping SLiMS..."
    unzip /tmp/slims.zip -d /tmp/slims
    
    echo "[INFO] Moving SLiMS files to /app..."
    mv /tmp/slims/slims9_bulian-9.7.1/* /app
    rm -rf /tmp/slims /tmp/slims.zip
    
    echo "[INFO] Setting permissions for /app..."
    chown -R www-data:www-data /app
    chmod -R u+rwX /app
else
    echo "[INFO] /app already exists. Skipping download."
fi

echo "[INFO] Starting SLiMS..."
exec frankenphp run --config /etc/frankenphp/Caddyfile
