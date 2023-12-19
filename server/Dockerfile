FROM python:latest

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apt-get update && apt-get install -y \
    wkhtmltopdf \
    libpq-dev

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

EXPOSE 8000
