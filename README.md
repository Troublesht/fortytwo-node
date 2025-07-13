# 📦 Fortytwo Node - Easy Setup (Docker)

Run the [Fortytwo Console App](https://fortytwo.network) in **one command** on any system using Docker.

---

## ✅ Step 1: Install Docker

| System  | How to Install |
|---------|----------------|
| **Windows** | [Download Docker Desktop](https://www.docker.com/products/docker-desktop) and install |
| **macOS**   | [Download Docker Desktop](https://www.docker.com/products/docker-desktop) |
| **Linux**   | Run: `sudo apt install docker.io -y` |

---

## 🚀 Step 2: Run the Node

Open a terminal or PowerShell and run:

```bash
docker run -it --rm --gpus all troublesht/fortytwo-node

That’s it! 🎉
It will:

Install dependencies

Fix CUDA if needed

Launch the Fortytwo app

🧠 Optional: Use on QuickPod.io
Go to: console.quickpod.io/templates

Add a new Docker template:

Image: troublesht/fortytwo-node

Command: ./linux.sh

Enable GPU and deploy
