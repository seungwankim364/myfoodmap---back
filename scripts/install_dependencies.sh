#!/bin/bash

# 1. 프로젝트 폴더로 이동
cd /home/ubuntu/myfoodmap-server

# 2. 혹시 이전에 root로 실행해서 꼬였을 수 있으니, 폴더 주인님을 'ubuntu'로 되찾기 (중요!)
sudo chown -R ubuntu:ubuntu /home/ubuntu/myfoodmap-server

# 3. 로컬 패키지 설치 (여긴 sudo 쓰면 안 됨! 내 폴더니까!)
echo "Installing project dependencies..."
npm install

# 4. Prisma 클라이언트 생성
echo "Generating Prisma client..."
npx prisma generate

# 5. PM2 설치 (⭐ 여기가 문제였음! 전역 설치니까 sudo 필수!)
echo "Installing/Updating PM2..."
sudo npm install -g pm2