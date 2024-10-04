#!/bin/bash
echo "Lancement des tests..."

# Vérifier si le fichier test_html.sh existe
if [ ! -f "./test_html.sh" ]; then
    echo "Erreur : Le fichier test_html.sh est introuvable."
    exit 1
fi

# Exécuter le script de test
./test_html.sh

# Vérifier le code de sortie du script de test
if [ $? -eq 0 ]; then
    echo "Tous les tests ont réussi."
else
    echo "Des erreurs ont été détectées lors des tests."
    exit 1
fi
