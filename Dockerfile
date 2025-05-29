# Imagen base oficial con Node.js
FROM node:18

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos que describen las dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de tu proyecto
COPY . .

# Construye la aplicación de Next.js para producción
RUN npm run build

# Expone el puerto en el que corre Next.js (por defecto, 3000)
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]
