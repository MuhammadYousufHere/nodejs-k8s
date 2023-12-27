FROM node:20-bullseye-slim 

WORKDIR /app

COPY . .

EXPOSE 3000

CMD [ "npm" ,"start" ]