FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /app

# Dependencies first (cached unless requirements.txt changes)
COPY requirements.txt .
RUN pip install -r requirements.txt

# Application code
COPY src ./src
COPY main.py config.yaml ./

# Run as a non-root user
RUN useradd --create-home appuser \
    && mkdir -p data/raw data/interim data/processed models reports logs \
    && chown -R appuser:appuser /app
USER appuser

ENTRYPOINT ["python", "main.py"]
CMD ["--help"]
