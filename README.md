# 🚀 Next.js Docker & Kubernetes App

A modern Next.js application with automated Docker builds and Kubernetes deployment.

## 📦 Quick Start

### Build the Docker image
```bash
docker build -t nextjs-app .
```
### Run locally
```bash
docker run -p 4000:3000 nextjs-app
```

## 🛠️ Features

- ✅ **Next.js 15** with TypeScript
- ✅ **Docker** containerization  
- ✅ **GitHub Actions** CI/CD
- ✅ **Kubernetes** deployment
- ✅ **Automated builds** on every push

## 📸 Application Preview

<img width="1910" height="1019" alt="Image" src="https://github.com/user-attachments/assets/4cdbf06f-9381-4018-b924-911196e6d844" />
<img width="1919" height="1017" alt="Image" src="https://github.com/user-attachments/assets/756eaa0b-7ad7-422d-998f-866fa8f18909" />
<img width="1910" height="1024" alt="Image" src="https://github.com/user-attachments/assets/02b3e4ad-11db-4551-9a0b-2172c6d1f2da" />
<img width="1919" height="1017" alt="Image" src="https://github.com/user-attachments/assets/5c02d992-f28d-42d3-bc9b-af1f40658426" />
<img width="1919" height="1021" alt="Image" src="https://github.com/user-attachments/assets/d0673a3c-2a06-4538-98e9-9b5ee5d28c1a" />

## 🏗️ Project Structure

```
nextjs-docker-k8s/
├── 🐳 Dockerfile
├── 📁 my-nextjs-app/
│   ├── 📄 package.json
│   ├── 📁 app/
│   ├── 📁 public/
│   └── 📁 src/
├── ⚙️ .github/workflows/
│   └── 🚀 docker-build-push.yml
├── ☸️ k8s/
│   ├── 📄 deployment.yaml
│   └── 📄 service.yaml
└── 📖 README.md
```

## 🚀 Deployment

### Docker
```yaml
image: nextjs-app:latest
ports:
  - 3000:3000
```

### Kubernetes
```bash
kubectl apply -f k8s/
```

## 🔧 Development

```bash
cd my-nextjs-app
npm install
npm run dev
```
