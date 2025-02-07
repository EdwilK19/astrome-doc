# Usa la imagen oficial de Node.js
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /home/edwilk19/app

# Copia los archivos del proyecto al contenedor
COPY . .

# Instala Astro globalmente
RUN npm install -g astro

# Instala las dependencias del proyecto
RUN npm install

# Expone el puerto que usará el servidor
EXPOSE 3000

# Comando para iniciar el servidor
CMD ["npm", "run", "dev"]
