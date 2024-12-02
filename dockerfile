# Usa una imagen base de Node.js
FROM node:16

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios
COPY package*.json ./
RUN npm install
COPY ./app ./app

# Expone el puerto que utiliza tu aplicación
EXPOSE 3000

# Comando para ejecutar tu aplicación
CMD ["node", "app/app.js"]
