#!/bin/bash
cd /home/ubuntu/myfoodmap-server

# 기존 서버 있으면 끄고 (에러 무시)
pm2 stop all || true

# 서버 시작 (index.js가 메인 파일이라고 가정. app.js면 바꿔줘!)
pm2 start index.js --name "myfoodmap-backend" --update-env