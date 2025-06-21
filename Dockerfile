# Dockerfile
FROM python:3.11-slim

WORKDIR /app

# ติดตั้ง dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# คัดลอกโค้ดทั้งหมด
COPY . .

# เปิดพอร์ตให้ Cloud Run ใช้
ENV PORT=8080
EXPOSE 8080

# สั่งรันแอปด้วย Gunicorn
CMD ["gunicorn", "main:app", "--bind", "0.0.0.0:8080"]
