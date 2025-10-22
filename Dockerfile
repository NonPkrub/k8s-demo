FROM node:24-alpine as base
WORKDIR /app

# Install dependencies separately for caching
COPY package.json package-lock.json* ./
RUN npm ci --omit=dev

# Copy application source
COPY . .

# Run as non-root (alpine node image includes user 'node')
USER node
EXPOSE 3000
ENV NODE_ENV=production
CMD [ "npm", "start" ]

