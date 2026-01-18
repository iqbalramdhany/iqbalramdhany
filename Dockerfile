# Dockerfile untuk Portfolio Muhammad Iqbal Ramdhany
# Menggunakan Nginx untuk serving static files

FROM nginx:alpine

# Copy file portfolio ke folder nginx
COPY index.html /usr/share/nginx/html/index.html
COPY assets/ /usr/share/nginx/html/assets/

# Expose port 80
EXPOSE 80

# Nginx sudah otomatis start saat container run
CMD ["nginx", "-g", "daemon off;"]
