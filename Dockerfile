FROM node:14 AS builder
WORKDIR /app
COPY app/package*.json ./     
RUN npm ci --production
COPY app .                    
RUN npm run build

FROM node:14
WORKDIR /app
COPY --from=builder /app ./
EXPOSE 3000
CMD ["npm", "start"]
