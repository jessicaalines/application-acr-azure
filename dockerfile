# Define como construir a imagem Docker da aplicação 'landing-page' com Nginx e suas dependências.

FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
