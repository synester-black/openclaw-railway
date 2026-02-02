FROM node:22-slim

WORKDIR /app

RUN npm install -g openclaw@latest

EXPOSE 8000

CMD ["openclaw", "serve"]
