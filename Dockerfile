# Stage 1: Build stage
FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Stage 2: Production stage
FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --only=production

# Source files ටික copy කරගන්නවා
COPY --from=builder /app ./

EXPOSE 3000
CMD ["node", "index.js"]