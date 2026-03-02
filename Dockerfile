FROM python:latest
WORKDIR /app

# Debug step - check files (optional)
RUN ls -la

# Copy requirements first
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the files
COPY . .

CMD ["python", "bot.py"]  # ya jo main file ho
