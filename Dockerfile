FROM python:3.8.5-alpine3.12

# 필수 패키지 설치 (curl 포함)
RUN apk update && apk add --no-cache curl

# 작업 디렉토리 설정
WORKDIR /usr/src/app

# 소스 복사
COPY . .

# Python 의존성 설치
RUN pip install --no-cache-dir -r requirements.txt

# 실행 명령
CMD [ "python", "app.py" ]