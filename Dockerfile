FROM node:16.14-buster-slim as builder

WORKDIR /app

COPY ./ /app/

WORKDIR /app

RUN rm -rf node_modules && npm install && npm run build

FROM nginx:alpine

## Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy the nginx conf file
COPY --from=builder /app/nginx.prod.conf /etc/nginx/nginx.conf

# Copy from the stahg 1
COPY --from=builder /app/build /usr/share/nginx/html

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]