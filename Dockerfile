# Imagen base oficial Node.js 18 (Alpine Linux liviana)
FROM node:18-alpine

# Directorio de trabajo interno en el contenedor
WORKDIR /usr/src/app

# Copiar manifiesto de dependencias
COPY package*.json ./

# Instalar dependencias de producción
RUN npm install --production

# Copiar el código fuente completo
COPY . .

# Exponer el puerto 3000
EXPOSE 3000

# Comando por defecto para iniciar la aplicación
CMD ["npm", "start"]
