# CI/CD Demo

![CI](https://github.com/Kentex99/ci-cd-demo/actions/workflows/ci-cd.yml/badge.svg)  
[![Container Image](https://github.com/Kentex99/ci-cd-demo/pkgs/container/ci-cd-demo/versions)](https://github.com/Kentex99/ci-cd-demo/pkgs/container/ci-cd-demo/versions)

A minimal Python application demonstrating:

- **Automated tests** with `pytest`  
- **Multi-stage Docker** build  
- **Security scanning** with Trivy  
- **Publish** to GitHub Container Registry (GHCR)

---

## Prerequisites

- Docker  
- Python 3.11 (for local testing)  
- Git  

---

## Getting Started

Clone the repo and run tests locally:

```bash
git clone https://github.com/Kentex99/ci-cd-demo.git
cd ci-cd-demo

# (Optional) Create and activate a virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies and run tests
pip install pytest
pytest -q

# Build and test in Docker
docker build -t ci-cd-demo:local .
docker run --rm ci-cd-demo:local

## Usage

Pull the latest published image:

```bash
docker pull ghcr.io/kentex99/ci-cd-demo:latest
