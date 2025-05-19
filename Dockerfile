# Étape 1 : Builder frontend React Native (si besoin de scripts de build)
# Ignoré ici car React Native OTA utilise EAS

# Étape 2 : Backend Node.js
FROM node:18

WORKDIR /app

COPY mobile/backend/package*.json ./backend/
RUN cd backend && npm install

COPY mobile/backend ./backend

EXPOSE 3000

CMD ["node", "backend/index.js"]
