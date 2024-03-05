FROM python:3.11-alpine

WORKDIR /opt/app

COPY . .

RUN pip3 install pytelegrambotapi 

CMD ["python3", "/opt/app/bot.py"]
