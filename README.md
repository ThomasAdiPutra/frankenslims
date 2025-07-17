# FrankenSlims

**Senayan Library Management System (SLiMS) 9 + FrankenPHP Docker Image**  
Run SLiMS with modern, lightweight, and fast PHP server using [FrankenPHP](https://frankenphp.dev).


## 🚀 Highlights

- 🔥 Powered by FrankenPHP (PHP 8.4)
- 🐬 MariaDB 10.3 as official DB backend
- 🧑‍💻 Automatic SLiMS 9.6.1 downloader on first run
- 🛡️ Caddy server with modern headers and clean rules
- 🖥️ Optional phpMyAdmin for database access


## 📦 Docker Image

Image tersedia di Docker Hub: [`alfinauzikri/frankenslims`](https://hub.docker.com/r/alfinauzikri/frankenslims)

Kamu bisa langsung menjalankan tanpa build manual:

```bash
docker pull alfinauzikri/frankenslims:latest
```

## 🧰 How to Use

### 1. Clone Repo

```bash
git clone https://github.com/alfinauzikri/frankenslims.git
cd frankenslims
```

### 2. Jalankan Docker Compose

```bash
docker compose up -d
```

> SLiMS akan otomatis di-download ke folder `./app` saat pertama kali dijalankan.

### 3. Akses Aplikasi

- 🌐 SLiMS: [http://localhost:8888](http://localhost:8888)
- 🛠️ phpMyAdmin *(opsional)*: [http://localhost:8889](http://localhost:8889)

### 4. Konfigurasi SLiMS Awal

Isi konfigurasi awal SLiMS dengan:

| Setting            | Value      |
|--------------------|------------|
| Database Host      | `db`       |
| Database Name      | `slims`    |
| Database User      | `slims`    |
| Database Password  | `slims`    |


## 📁 Struktur Project

```
.
├── Dockerfile               # FrankenPHP + PHP extensions
├── Caddyfile                # Caddy + SLiMS rules
├── entrypoint.sh            # Auto download SLiMS
├── docker-compose.yml       # Services: app, db, phpmyadmin
└── app/                     # SLiMS mounted volume
```


## 🛠 Optional: Jalankan phpMyAdmin

```bash
docker compose --profile tools up -d
```

Lalu buka: [http://localhost:8889](http://localhost:8889)

Login:
- **Server**: `db`
- **User**: `root`
- **Password**: `slims`


## 🧾 License

This Docker integration project is under the MIT License.  
SLiMS itself is released under the [GNU GPL v3](https://www.gnu.org/licenses/gpl-3.0.html).


## 🤝 Credits

- [SLiMS (Senayan)](https://github.com/slims) - Library Management System
- [FrankenPHP](https://frankenphp.dev/) - Modern PHP App Server
- [Caddy Server](https://caddyserver.com/) - Secure Web Server


## 🖼️ Screenshots

<img width="1900" alt="SLiMS Dashboard" src="https://github.com/user-attachments/assets/e4d61c47-fc2c-4a94-9c9e-c5d61feb5148" />
<img width="1901" alt="SLiMS Bibliography Module" src="https://github.com/user-attachments/assets/246f7089-42f2-4695-9d5f-70fe6787a999" />
<img width="1919" alt="SLiMS System Module" src="https://github.com/user-attachments/assets/d0fc7203-b4c0-48f5-8a14-18a5a51de18c" />
