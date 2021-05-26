#Inserido por Gilvã

FROM python:3.6-slim

RUN mkdir /usr/app
WORKDIR /usr/app
WORKDIR /app
COPY . /usr/app
RUN pip install -r /usr/app/requirements.txt
RUN pip install pipenv
RUN pipenv install
EXPOSE 8080
CD /usr/app
CMD ["gunicorn", "-c", "gunicorn_config.py", "wsgi:app", "--log-level debug api:app"]