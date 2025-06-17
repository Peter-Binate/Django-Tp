FROM python:3.13-slim-bullseye

RUN mkdir /app

WORKDIR /app

# Evite de compiler le code en dev (allège le code)
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN pip install --upgrade pip

COPY app/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY app/ .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]