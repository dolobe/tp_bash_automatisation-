#!/bin/bash

echo "Déploiement de l'application..."

# Vérifier si le script est exécuté avec des privilèges root
if [ "$EUID" -ne 0 ]; then
  echo "Erreur : Veuillez exécuter ce script avec sudo ou en tant que root."
  exit 1
fi

# Vérifier si le fichier index.html existe
if [ ! -f "index.html" ]; then
  echo "Erreur : Le fichier index.html est introuvable."
  exit 1
fi

# Copier index.html dans le répertoire Apache
sudo cp index.html /var/www/html/
if [ $? -ne 0 ]; then
  echo "Erreur lors de la copie du fichier index.html."
  exit 1
fi

# Redémarrer Apache pour appliquer les changements
sudo systemctl restart apache2
if [ $? -ne 0 ]; then
  echo "Erreur lors du redémarrage d'Apache."
  exit 1
fi

echo "Déploiement terminé avec succès."
