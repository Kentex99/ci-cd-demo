#################################
# Builder Stage
#################################
FROM python:3.11-slim AS builder
WORKDIR /app

# Install dependencies to a user directory
COPY requirements.txt .
RUN pip install --user -r requirements.txt

# Copy the app code
COPY . .

#################################
# Final Stage
#################################
FROM python:3.11-slim
WORKDIR /app

# Ensure our app directory is on Python’s import path
ENV PYTHONPATH=/app

# Copy installed packages from builder
COPY --from=builder /root/.local /root/.local
COPY . .

# Ensure local packages are on PATH
ENV PATH=/root/.local/bin:$PATH

# Default command: run tests
CMD ["pytest", "-q"]
