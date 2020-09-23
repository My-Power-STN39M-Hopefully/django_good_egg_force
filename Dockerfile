FROM python:3.6.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY . /app/

RUN pip install --upgrade pip

RUN pip install pipenv

RUN pipenv install --deploy --system --skip-lock --dev