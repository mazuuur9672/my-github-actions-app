FROM node:26-bookworm-slim

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev

COPY index.js ./
USER node
CMD ["node", "index.js"]
