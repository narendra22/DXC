FROM python:3.9-slim-buster
WORKDIR /app

COPY requirements.txt /app
RUN pip install -r /app/requirements.txt


ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY main.py /app/main.py
COPY templates/home.html /app/templates/home.html
COPY templates/about.html /app/templates/about.html

EXPOSE 5000
ENTRYPOINT flask run --host 0.0.0.0
#CMD flask run --host 0.0.0.0