#TP1 Docker

## Question 6

Le fichier `docker-compose.yml` permet de décrire les conteneurs, appelés service dans le cas de docker-compose, qui définissent une application.
```bash
# Démarre tous les conteneurs tel que spécifié dans le fichier docker-compose.yml
$ docker-compose up

# Arrête les conteneurs
$ docker-compose stop
```

Les avantages de ce fichier sont les suivants :
- Permet de tracer ce qui est fait (le fichier peut être versionné avec le code source)
- Le fichier utilise la syntaxe YAML qui rend la configuration plus lisible que les lignes de commande docker