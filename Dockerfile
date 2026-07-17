# Gunakan base image Node.js versi 20 Alpine (lebih ringan)
FROM node:20-alpine

# Set working directory di dalam container
WORKDIR /app

# Salin package.json dan package-lock.json
COPY package*.json ./

# Install dependensi
RUN npm install

# Salin seluruh source code (kecuali yang ada di .dockerignore)
COPY . .

# Eksekusi port 5173 agar bisa diakses
EXPOSE 5173

# Jalankan server vite dengan flag --host
CMD ["npm", "run", "dev", "--", "--host"]
