# Usa una imagen base oficial de Node.js
FROM node:20.15.1-alpine3.20

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia el archivo package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto del código fuente de la aplicación
COPY . .

# Expone el puerto en el que la aplicación escucha
EXPOSE 3001

# Define el comando para iniciar la aplicación
CMD ["node", "app.js"]