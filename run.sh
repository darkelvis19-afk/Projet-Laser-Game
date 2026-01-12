#!/bin/bash

echo "========================================"
echo "  Shoot'em Up - Moteur de Jeu 2D"
echo "========================================"
echo ""
echo "Compilation et exécution du jeu..."
echo ""

# Vérifier si on est dans le bon répertoire
if [ ! -f "gradlew" ]; then
    echo "Erreur: gradlew introuvable!"
    echo "Assurez-vous d'être dans le répertoire racine du projet."
    exit 1
fi

# Rendre gradlew exécutable
chmod +x gradlew

# Compiler et exécuter
./gradlew :desktop:run

if [ $? -ne 0 ]; then
    echo ""
    echo "Erreur lors de l'exécution!"
    exit 1
fi
