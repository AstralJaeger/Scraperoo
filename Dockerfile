FROM python:3.11

WORKDIR /app

RUN curl -sSL https://install.python-poetry.org | python3 -

COPY . /app

RUN poetry config virtualenvs.create false \
  && poetry install --no-dev

CMD ["python3", "main.py"]



