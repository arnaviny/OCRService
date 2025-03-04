FROM python:3.9-slim

WORKDIR /app

# עדכון חבילות והתקנת Poppler ו-Tesseract
RUN apt-get update && apt-get install -y poppler-utils tesseract-ocr

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "OCRServesPy.py"]
