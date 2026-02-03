#!/bin/bash

# 1. 내가 누구인지, 어디에 있는지 로그 남기기 (나중에 에러 잡기 좋음)
echo "Current User: $(whoami)" >> /home/ubuntu/deploy_log.txt
echo "Node Path check: $(which node)" >> /home/ubuntu/deploy_log.txt

# 2. 작업 폴더로 이동 (없으면 만들고)
mkdir -p /home/ubuntu/myfoodmap-server
cd /home/ubuntu/myfoodmap-server

# 3. 설치 시작 (명령어 앞에 'sudo' 붙여서 권한 문제 원천 봉쇄)
# ⭐ 중요: 그냥 npm 말고, 아까 확인한 '절대 경로'를 쓰세요!
# (만약 which npm 결과가 /usr/bin/npm 이라면)
/usr/bin/npm install

# 4. Prisma 생성
/usr/bin/npx prisma generate

# 5. PM2 설치 (이미 있으면 넘어감)
/usr/bin/npm install pm2 -g