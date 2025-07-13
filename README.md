✅ Full README.md

# 🧠 Fortytwo Node – Dockerized GPU Setup

Run a Fortytwo Node with GPU support in one command—on **Windows, macOS, Linux**, or with **QuickPod.io** cloud GPU.

---

## ✨ Features

- ✅ Installs all required packages
- ✅ Auto-checks and fixes CUDA if missing
- ✅ Runs `./linux.sh` automatically
- ✅ Works on Docker Desktop (Windows/Mac/Linux) with NVIDIA GPUs
- ✅ Deploy to cloud with one button using QuickPod

---

## 🐳 Run Locally with Docker

### Step 1: Install Docker

- **Windows / Mac:** Install [Docker Desktop](https://www.docker.com/products/docker-desktop)
- **Linux:** Run:
  ```bash
  sudo apt update
  sudo apt install docker.io -y
And ensure NVIDIA drivers + NVIDIA Container Toolkit are installed for GPU support.

Step 2: Launch the Fortytwo node:
```bash
docker run -it --rm --gpus all troublesht/fortytwo-node
```


✅ That’s It! 🎉
This will:

Install all packages (at build time)

Fix CUDA if needed (via nvcc check)

Automatically start the Fortytwo application (./linux.sh)

🚀 Run with QuickPod.io (Cloud GPU)
You can run your node with GPU in the cloud—no local setup required.

QuickPod Setup:
Go to QuickPod Templates

Click Create New Template

Fill in:

Docker Image Path: troublesht/fortytwo-node


✅ Enable GPU

Click Deploy

Once pod starts, open its terminal and run, (You can also connect it using ssh and run) :
 ```bash
./linux.sh
```

Your node runs inside a GPU-enabled container automatically.

⚙️ How It Works
Dockerfile starts from CUDA base, installs dependencies, and sets CMD ["./linux.sh"]

Includes a check/fix for missing CUDA (via nvcc)

Built automatically with GitHub Actions on each commit to main

📎 Useful Links

| Resource         | Link                                                                                                   |
| ---------------- | ------------------------------------------------------------------------------------------------------ |
| Fortytwo Docs    | [https://docs.fortytwo.network](https://docs.fortytwo.network)                                         |
| QuickPod Console | [https://console.quickpod.io/templates](https://console.quickpod.io/templates)                         |
| Docker Hub Repo  | [https://hub.docker.com/r/troublesht/fortytwo-node](https://hub.docker.com/r/troublesht/fortytwo-node) |
| Support          | Open an issue or join [Fortytwo Discord](https://discord.gg/fortytwo)                                  |

👥 Contributions
Fork this repo to make changes or improvements. Pull requests welcome!

Maintainer: Troublesht
