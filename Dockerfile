FROM python:3.13-alpine

ENV PYTHONPATH=/app/src
ENV UV_COMPILE_BYTECODE=1

WORKDIR /app

# Copy dependency files first for better caching
COPY pyproject.toml uv.lock /app/

# Install the application dependencies.
RUN --mount=from=ghcr.io/astral-sh/uv,source=/uv,target=/bin/uv \
  uv sync --frozen --no-cache

COPY src/ /app/src/

EXPOSE 8000

# Run the application.
ENTRYPOINT ["/app/.venv/bin/python", "src/main.py"]
