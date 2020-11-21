FROM node:14.15.1 as builder
WORKDIR /apps/frontend
COPY package.json .
RUN npm install
COPY . .
RUN npm run generate
FROM nginx
COPY --from=builder /apps/frontend/dist /usr/share/nginx/html

