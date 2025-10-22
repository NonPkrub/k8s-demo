# 🚀 DevOps from Zero to Hero — Kubernetes Demo API App

This project follows the tutorial **"[DevOps from Zero to Hero: Build and Deploy a Production API](https://youtu.be/H5FAxTBuNM8?si=5ogYoZJQKt992GVJ)"**, where we build, containerize, and deploy a simple API to Kubernetes using modern DevOps practices.

---

## 🧱 Tech Stack
- **Backend:** Node.js / Express  
- **Containerization:** Docker  
- **Orchestration:** Kubernetes (Minikube / k3d)  
- **CI/CD:** GitHub Actions  
- **Monitoring (optional):** Prometheus + Grafana  
- **Cloud (optional):** Google Cloud / AWS EKS  

---

## ⚙️ How to Run Locally

### 1️⃣ Clone the repository
```bash
git clone https://github.com/yourusername/k8s-demo-api.git
cd k8s-demo-api
````

### 2️⃣ Build the Docker image

```bash
docker build -t demo-api .
```

### 3️⃣ Run the container

```bash
docker run -p 3000:3000 demo-api
```

Visit: [http://localhost:3000](http://localhost:3000)

---

## ☸️ Deploy to Kubernetes (Minikube Example)

### Start Minikube

```bash
minikube start
```

### Apply manifests

```bash
kubectl apply -f k8s/
```

### Check status

```bash
kubectl get pods
```

Then open the Minikube service:

```bash
minikube service k8s-demo-api-service
```

---

## 🔁 CI/CD with GitHub Actions

The pipeline automatically:

1. Builds and tests the app
2. Builds Docker image
3. Pushes to DockerHub / GitHub Container Registry
4. Applies new deployment to Kubernetes

You can find the workflow file in `.github/workflows/ci-cd.yaml`.

---

## 🎥 Video Reference

📺 **YouTube:** [DevOps from Zero to Hero — Build & Deploy a Production API](https://youtu.be/H5FAxTBuNM8?si=5ogYoZJQKt992GVJ)
---

## 🧠 Notes

This repository is for **learning DevOps fundamentals** — from Docker to CI/CD and Kubernetes.
You can extend it with:

* Monitoring (Prometheus + Grafana)
* Logging (ELK Stack)
* Secrets management (Vault or Kubernetes Secrets)
* Cloud deployment (GKE / EKS)

---



