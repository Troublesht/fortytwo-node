✅ Full README.md
markdown
Copy
Edit
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
bash
Copy
Edit
docker run -it --rm --gpus all troublesht/fortytwo-node
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

Image: troublesht/fortytwo-node

Command: ./linux.sh

✅ Enable GPU

Click Deploy

Once pod starts, open its terminal and run:

bash
Copy
Edit
./linux.sh
Your node runs inside a GPU-enabled container automatically.

⚙️ How It Works
Dockerfile starts from CUDA base, installs dependencies, and sets CMD ["./linux.sh"]

Includes a check/fix for missing CUDA (via nvcc)

Built automatically with GitHub Actions on each commit to main

