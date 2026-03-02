FROM python:latest

WORKDIR /app

# Pehle requirements copy karo
COPY requirements.txt .

# Phir dependencies install karo
RUN pip install -r requirements.txt

# Baaki files copy karo
COPY . .

CMD ["python", "app.py"]  # ya jo bhi tumhara main file hai
