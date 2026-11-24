FROM python:3.12-slim
WORKDIR /app
COPY pyproject.toml config.yaml ./
COPY src ./src
RUN pip install --no-cache-dir .
ENTRYPOINT ["mlops"]
CMD ["--help"]
