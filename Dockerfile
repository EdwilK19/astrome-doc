# Usar una imagen base de Node.js
FROM node:18-alpine

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del proyecto
COPY . .

# Construir la aplicación
RUN npm run build

# Exponer el puerto en el que corre Astro (por defecto es 4321)
EXPOSE 4321

# Comando para iniciar el servidor
CMD ["npm", "run", "preview", "--", "--host"]