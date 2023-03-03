# Spécifiez l'image de base
FROM nginx

# Copiez le fichier HTML dans le répertoire de l'hôte vers le répertoire racine de Nginx
COPY index.html /usr/share/nginx/html