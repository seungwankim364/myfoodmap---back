#!/bin/bash
cd /home/ubuntu/myfoodmap-server

# 1. 라이브러리 설치
npm install

# 2. Prisma 클라이언트 생성 (⭐ 중요! 이거 없으면 에러남)
npx prisma generate

# 3. PM2 (서버 관리 도구) 설치 (없으면 설치)
npm install pm2 -g