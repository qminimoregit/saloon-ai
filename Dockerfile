FROM python:3.12-slim

WORKDIR /app
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Dashboard listens on DASHBOARD_PORT (default 8080), which Cloud Run routes to.
CMD ["python", "main.py"]
