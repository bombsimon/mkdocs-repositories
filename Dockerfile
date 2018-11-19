FROM python:3.7-alpine

WORKDIR /app

RUN pip install --upgrade mkdocs

COPY  ./mkdocs.yml /app/
COPY ./docs        /app/docs

CMD mkdocs serve
