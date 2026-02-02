FROM node:22-slim

# Install git (required for npm dependencies)
RUN apt-get update \
    && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install OpenClaw CLI
RUN npm install -g openclaw@latest

ENV PORT=8000
EXPOSE 8000

CMD ["openclaw", "start"]

