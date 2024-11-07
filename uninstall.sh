#!/bin/bash

INSTALL_DIR="$HOME/.local/bin/custom-scripts"
REPO_NAME="vos-scripts"

# Suppression des liens symboliques
echo "Suppression des liens symboliques..."
find "$INSTALL_DIR" -type l -delete

# Suppression du répertoire cloné
echo "Suppression du répertoire des scripts..."
rm -rf "$INSTALL_DIR/$REPO_NAME"

# Suppression de la ligne PATH dans .bashrc
sed -i "/export PATH=\"\$PATH:$INSTALL_DIR\"/d" "$HOME/.bashrc"

echo "Désinstallation terminée! Veuillez redémarrer votre terminal ou exécuter 'source ~/.bashrc'"