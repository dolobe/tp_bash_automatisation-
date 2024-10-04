#!/bin/bash
echo "Démarrage du pipeline CI..."

# Exécuter les tests
./run_tests.sh

# Vérifier si les tests ont échoué
if [ $? -ne 0 ]; then
    echo "Pipeline échoué : Les tests ont échoué."
    exit 1
fi

# Exécuter le déploiement si les tests réussissent
./deploy.sh

# Afficher un message de succès si tout se passe bien
echo "Pipeline terminé avec succès."
