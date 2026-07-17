# Gunakan base image Node.js versi 20 Alpine
FROM node:20-alpine

# Install openssl yang dibutuhkan oleh Prisma
RUN apk add --no-cache openssl

# Set working directory
WORKDIR /app

# Salin package.json dan package-lock.json
COPY package*.json ./

# Install dependensi
RUN npm install

# Salin seluruh source code
COPY . .

# Generate Prisma Client (Penting!)
RUN npx prisma generate

# Ekspos port backend
EXPOSE 5001

# Jalankan mode development
CMD ["npm", "run", "dev"]
