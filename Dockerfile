FROM python:latest

WORKDIR /app

# System dependencies
RUN apt-get update -y && apt-get upgrade -y

# Copy requirements first (better caching)
COPY requirements.txt .

# Install Python packages
RUN pip3 install -U pip setuptools
RUN pip3 install -U -r requirements.txt

# Copy rest of the code
COPY . .

# Run bot
CMD ["python3", "-m", "FallenRobot"]
