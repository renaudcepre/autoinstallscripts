#!/bin/bash

INSTALL_DIR="$HOME/.local/bin"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Création du répertoire d'installation si nécessaire
mkdir -p "$INSTALL_DIR"

# Création des liens symboliques
echo "Installation des scripts..."
for script in "$SCRIPT_DIR/scripts"/*.sh; do
    if [ -f "$script" ]; then
        chmod +x "$script"
        script_name=$(basename "$script" .sh)
        ln -sf "$script" "$INSTALL_DIR/$script_name"
        echo "✓ $script_name"
    fi
done

# Configuration du PATH de manière plus robuste
for rc_file in "$HOME/.bashrc" "$HOME/.zshrc"; do
    if [ -f "$rc_file" ]; then
        # Supprime l'ancien PATH s'il existe
        sed -i "s|^export PATH=.*$INSTALL_DIR.*$||" "$rc_file"
        # Ajoute le nouveau PATH de manière propre
        echo "export PATH=\$PATH:$INSTALL_DIR" >> "$rc_file"
    fi
done

echo -e "\nInstallation terminée !"
echo "Pour activer les scripts, exécutez : source ~/.bashrc (bash) ou source ~/.zshrc (zsh)"
echo "Ensuite, vous pourrez utiliser les commandes : $(ls -1 "$INSTALL_DIR" | tr '\n' ' ')"