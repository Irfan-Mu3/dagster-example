FROM python:3.11-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PIP_ROOT_USER_ACTION=ignore

# Set working directory
COPY . ./

# Install dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    rm -rf /root/.cache/pip

WORKDIR /ml_pipeline/hackernews_flow/

# Expose the port
EXPOSE 80