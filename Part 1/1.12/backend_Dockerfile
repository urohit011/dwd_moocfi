FROM ubuntu:16.04

ENV FRONT_URL=http://localhost:5000
EXPOSE 8000

WORKDIR /backend
COPY . .

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y nodejs && \ 
    npm install

CMD ["npm", "start"]
