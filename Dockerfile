FROM node
WORKDIR /app
COPY package.json /app
RUN npm install
COPY app.js /app

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

EXPOSE 3000

ENTRYPOINT [ "/entrypoint.sh" ]