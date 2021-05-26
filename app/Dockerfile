#Inserido por Gilvã

FROM python:3.6-slim
WORKDIR /app
COPY ./app /app
RUN pip install -r /app/requirements.txt
RUN pip install pipenv
RUN pipenv install
EXPOSE 8080
CD app
CMD ["gunicorn", "-c", "gunicorn_config.py", "wsgi:app", "--log-level debug api:app"]