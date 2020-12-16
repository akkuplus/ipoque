FROM tiangolo/uwsgi-nginx-flask:python3.8

COPY ./app /app
# COPY requirements.txt /app

ENV FLASK_ENV development

RUN pip install -r /app/requirements.txt

WORKDIR /app

CMD ["python","main.py"]
