from python:3.8-slim-buster
label maintainer="wearelego@naver.com"
workdir /app
copy app.py ./
copy requirements.txt ./
run pip3 install -r requirements.txt
expose 4000
cmd ["python3","-m","flask","run","--host=0.0.0.0","--port=4000"]
