FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copiar TODO primero (invalida caché anterior)
COPY . .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Entrenar el modelo
RUN rasa train --domain domain.yml --config config.yml --data data/

EXPOSE 5005

CMD rasa run --enable-api --cors "*" --port ${PORT:-5005} --endpoints endpoints.yml
