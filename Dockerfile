FROM nginx:alpine

# Copiamos todos los archivos del proyecto a la carpeta de Nginx
COPY . /usr/share/nginx/html

# Le decimos a Nginx que 'ventaentradas.html' es la página principal
RUN mv /usr/share/nginx/html/ventaentradas.html /usr/share/nginx/html/index.html

EXPOSE 80