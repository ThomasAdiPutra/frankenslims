# FrankenSlims

**Senayan Library Management System (SLiMS) 9 + FrankenPHP Docker Image**  
Run SLiMS with a modern, lightweight, and blazing-fast PHP server using [FrankenPHP](https://frankenphp.dev).


## 🚀 Highlights

- ⚡ **Powered by FrankenPHP (PHP 8.4)**
- 🐬 **MariaDB 10.3** as the official database backend
- 🔄 **Automatic SLiMS 9.6.1** downloader on first run
- 🔒 **Modern Caddy server config** with secure headers and clean rules
- 🛠️ **Optional phpMyAdmin** for database access and inspection


## 📦 Docker Image

Official image available on Docker Hub: [`alfinauzikri/frankenslims`](https://hub.docker.com/r/alfinauzikri/frankenslims)

Pull the image directly:

```bash
docker pull alfinauzikri/frankenslims:latest
```


## 🧰 Usage Guide

### 1. Clone the Repository

```bash
git clone https://github.com/alfinauzikri/frankenslims.git
cd frankenslims
```

### 2. Start with Docker Compose

```bash
docker compose up -d
```

> SLiMS will be automatically downloaded to the `./app` folder on the first run.

### 3. Access the Application

- 📚 **SLiMS**: [http://localhost:8888](http://localhost:8888)  
- 🧮 **phpMyAdmin** *(optional)*: [http://localhost:8889](http://localhost:8889)

### 4. SLiMS Initial Configuration

Use the following database credentials during the setup wizard:

| Setting           | Value   |
|-------------------|---------|
| Database Host     | `db`    |
| Database Name     | `slims` |
| Database User     | `slims` |
| Database Password | `slims` |



## 📁 Project Structure

```
.
├── Dockerfile               # FrankenPHP + PHP extensions
├── Caddyfile                # Caddy rules for SLiMS
├── entrypoint.sh            # Auto-download SLiMS if not present
├── docker-compose.yml       # App, Database, and phpMyAdmin services
└── app/                     # Persistent SLiMS data
```



## 🛠️ Optional: Enable phpMyAdmin

```bash
docker compose --profile tools up -d
```

Then access: [http://localhost:8889](http://localhost:8889)

Login credentials:

- **Username**: `slims`
- **Password**: `slims`



## 📄 License

This Docker integration is released under the **MIT License**.  
SLiMS itself is licensed under the [GNU GPL v3](https://www.gnu.org/licenses/gpl-3.0.html).



## 🙌 Credits

- [SLiMS (Senayan)](https://github.com/slims) – Library Management System
- [FrankenPHP](https://frankenphp.dev/) – Modern PHP Application Server
- [Caddy Server](https://caddyserver.com/) – Secure Web Server



## 📸 Screenshots

<img width="1900" alt="SLiMS Dashboard" src="https://github.com/user-attachments/assets/e4d61c47-fc2c-4a94-9c9e-c5d61feb5148" />
<img width="1901" alt="SLiMS Bibliography Module" src="https://github.com/user-attachments/assets/246f7089-42f2-4695-9d5f-70fe6787a999" />
<img width="1919" alt="SLiMS System Module" src="https://github.com/user-attachments/assets/d0fc7203-b4c0-48f5-8a14-18a5a51de18c" />