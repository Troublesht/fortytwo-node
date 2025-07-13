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

## 🚀 Run with QuickPod.io

You can run this Fortytwo node with GPU directly using [QuickPod.io](https://quickpod.io):

### 🧠 Steps:
1. Go to [console.quickpod.io/templates](https://console.quickpod.io/templates)
2. Create a new Docker Template:
   - **Image**: `troublesht/fortytwo-node`
   - **Command**: `./linux.sh`
   - **Enable GPU**: ✅ Yes
3. Click **Deploy**

That’s it! 🎉  
The container will:
- Install all dependencies
- Check and fix CUDA if needed
- Automatically run the Fortytwo app





