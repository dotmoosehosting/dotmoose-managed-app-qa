FROM nginx:alpine
RUN printf '%s\n' 'DotMoose Managed App Git deployment QA' > /usr/share/nginx/html/index.html
EXPOSE 80
