FROM node:alpine as builder

WORKDIR /frontend
COPY . .
ENV API_URL=http://localhost:8000

RUN npm install && npm run-script build

FROM node:alpine

COPY --from=builder /frontend/dist/ /frontend

RUN npm install -g serve && \
    adduser -D frontend_app && \
    chown -R frontend_app: /frontend

USER frontend_app

EXPOSE 5000

CMD serve -s -l 5000 frontend
