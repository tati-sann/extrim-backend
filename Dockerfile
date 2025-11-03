FROM node:22.14-alpine

WORKDIR /app

# Копируем package.json из папки app
COPY ./app/package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем весь исходный код из папки app в /app
COPY ./app/ ./

# Собираем приложение
RUN npm run build

EXPOSE 3001

CMD ["npm", "run", "start:prod"]