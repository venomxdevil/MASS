FROM python:3.10.6

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt
RUN pip install --upgrade pyrogram

COPY . /app

CMD python3 main.py
