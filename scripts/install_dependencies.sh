#!/bin/bash

# 1. 환경변수 불러오기 (npm 명령어를 찾기 위해 필수!)
source /home/ubuntu/.profile

# 2. 폴더로 이동 (없으면 에러 나니까 -p로 만들고 이동)
mkdir -p /home/ubuntu/myfoodmap-server
cd /home/ubuntu/myfoodmap-server

# 3. 설치 시작
echo "Installing dependencies..."
npm install

echo "Generating Prisma client..."
npx prisma generate

echo "Installing PM2..."
sudo npm install pm2 -g