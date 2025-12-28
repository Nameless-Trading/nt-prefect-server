# Use minimal python3.12 image with UV installed
FROM ghcr.io/astral-sh/uv:python3.12-alpine

# Install dependencies
COPY requirements.txt .
RUN uv pip install -r requirements.txt

# Expose Prefect UI port
EXPOSE 4200

# Start Prefect server
CMD ["prefect", "server", "start", "--host", "0.0.0.0"]