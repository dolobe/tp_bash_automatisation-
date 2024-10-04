#!/bin/bash
if [ -f "index.html" ]; then
    echo "Le fichier index.html existe."
    if grep -q "<h1>" index.html; then
        echo "Test réussi : Balise <h1> trouvée."
    else
        echo "Test échoué : Balise <h1> non trouvée."
        exit 1
    fi
else
    echo "Test échoué : Le fichier index.html n'existe pas."
    exit 1
fi

