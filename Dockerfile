# Utiliser l'image MySQL 5.7 depuis Docker Hub
FROM mysql:5.7

# Définir les variables d'environnement pour la configuration de MySQL
ENV MYSQL_ROOT_PASSWORD=my-secret-pw
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Copier un script SQL pour créer une table et des enregistrements dans la base de données
COPY myscript.sql /docker-entrypoint-initdb.d/

# Exposer le port MySQL
EXPOSE 3306

# Utiliser l'image phpMyAdmin depuis Docker Hub
FROM phpmyadmin/phpmyadmin

# Configurer les variables d'environnement pour phpMyAdmin
ENV PMA_HOST=mydatabase
ENV PMA_USER=myuser
ENV PMA_PASSWORD=mypassword

# Exposer le port phpMyAdmin
EXPOSE 80

# Exécuter les deux conteneurs
CMD ["sh", "-c", "service mysql start && apache2-foreground"]
