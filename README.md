# ⚡ Fortytwo Node – Easy Docker Setup

Run the [Fortytwo Console App](https://fortytwo.network) on any machine (Windows, macOS, Linux) with GPU using Docker or QuickPod.io.

---

## 🐳 Run Locally with Docker

### 1. 📦 Install Docker

| OS      | How to Install                                  |
|---------|--------------------------------------------------|
| 🪟 Windows | [Download Docker Desktop](https://www.docker.com/products/docker-desktop) |
| 🍎 macOS   | [Download Docker Desktop](https://www.docker.com/products/docker-desktop) |
| 🐧 Linux   | Run in terminal:<br>`sudo apt install docker.io -y` |

### 2. 🚀 Run Fortytwo Node

Once Docker is installed, run this in your terminal:

```bash
docker run -it --rm --gpus all troublesht/fortytwo-node

---

## ☁️ Run with QuickPod.io (No Setup Needed)
## If you don’t want to install Docker or don’t have a local GPU, use QuickPod:
➤ Quick Setup:
Go to QuickPod Templates

Click New Template

Fill in:

Image / path: troublesht/fortytwo-node


✅ Enable GPU

Click Deploy

QuickPod will automatically pull the image and start your node with GPU enabled.




