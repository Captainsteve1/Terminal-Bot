FROM python:3.9

COPY . .

RUN apt-get -y update && apt-get -y upgrade \
    && apt-get install -y ffmpeg \
    && pip3 install -r requirements.txt

CMD [ "python3", "bot.py" ]
