# On se base sur l'image nginx
FROM nginx

# OOn copie les fichiers présents en local dans notre image
COPY html/ /usr/share/nginx/html/