#!/bin/bash

# --- Cập nhật hệ thống ---
echo "🔄 Updating system..."
sudo yum update -y

# --- Cài Git và Docker ---
echo "📦 Installing Git and Docker..."
sudo yum install -y git docker python3 pip

# --- Khởi động Docker ---
echo "🚀 Starting Docker..."
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user

# --- Cài Python virtualenv ---
echo "🐍 Installing virtualenv..."
pip3 install --upgrade pip
pip3 install virtualenv

# --- Clone project từ GitHub ---
REPO_URL="https://github.com/croyce97/FastAPI_Project.git"
TARGET_DIR="FastAPI_Project"

echo "📥 Cloning repo $REPO_URL..."
rm -rf $TARGET_DIR  # Xoá nếu đã tồn tại
git clone $REPO_URL

# --- Vào thư mục project ---
cd $TARGET_DIR || { echo "❌ Repo not found!"; exit 1; }

# --- Tạo virtualenv và cài requirements ---
echo "📦 Setting up Python environment..."
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# --- Chạy FastAPI app ---
echo "🚀 Starting FastAPI server..."
uvicorn main:app --host 0.0.0.0 --port 8000
