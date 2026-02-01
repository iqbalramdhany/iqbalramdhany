# Dockerfile untuk Portfolio Muhammad Iqbal Ramdhany
# Menggunakan Python Flask untuk serving

FROM python:3.11-slim

WORKDIR /app

# Copy requirements dan install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy semua file portfolio
COPY . .

# Expose port 5000
EXPOSE 5000

# Jalankan Flask app
CMD ["python", "app.py"]
