//ENTREGAR EL EN AULA VIRTUAL LOS DOS ALUMNOS EL ENLACE AL REPOSITORIO. DEBE SER PUBLICO

# Despliegue de Aplicación Web (Cine) con Nginx y Docker

Este repositorio contiene la aplicación de venta de entradas de cine desplegada mediante un servidor web **Nginx** sobre un contenedor **Docker**.

---

## 🚀 Requisitos Previos

* Tener instalado **Docker Desktop**.
* Tener instalado **Git**.

---

## 📁 Configuración del Dockerfile

Se utiliza la imagen ligera de Nginx (`nginx:alpine`), copiando los archivos del proyecto y renombrando la página principal `ventaentradas.html` a `index.html` para que sea servida automáticamente:

```dockerfile
FROM nginx:alpine

# Copiamos todos los archivos del proyecto a la carpeta publica de Nginx
COPY . /usr/share/nginx/html

# Renombramos la pagina principal a index.html
RUN mv /usr/share/nginx/html/ventaentradas.html /usr/share/nginx/html/index.html

EXPOSE 80

