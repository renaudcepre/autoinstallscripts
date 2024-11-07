# AutoInstallScripts

Scripts d'installation et de gestion pour automatiser certaines tâches sur votre système. Ce projet inclut des utilitaires pour installer, désinstaller et gérer des scripts avec des options de filtrage et de copie dans le presse-papier.

## Table des Matières

1. [Licence](#licence)
2. [Contenu du Projet](#contenu-du-projet)
3. [Prérequis](#prérequis)
4. [Installation](#installation)
5. [Désinstallation](#désinstallation)
6. [Documentation des Scripts](#documentation-des-scripts)
   - [install.sh](#installsh)
   - [uninstall.sh](#uninstallsh)
   - [scripts/folderdump.sh](#scriptsfolderdumpsh)

## Licence

Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

## Contenu du Projet

- **LICENSE** : Licence MIT pour ce projet.
- **install.sh** : Script d'installation pour copier les scripts dans un répertoire, ajouter leur emplacement au `PATH`, et rendre les scripts exécutables.
- **uninstall.sh** : Script de désinstallation pour supprimer les scripts et nettoyer les configurations ajoutées dans les fichiers de configuration du shell.

## Installation

Exécutez le script d'installation pour configurer les scripts et les ajouter à votre `PATH`.

```bash
./install.sh
```

Ce script :
1. Crée le dossier d'installation dans `~/.local/bin` s'il n'existe pas.
2. Copie les scripts du dossier `scripts` et les rend exécutables.
3. Modifie les fichiers de configuration du shell (`.bashrc` et `.zshrc`) pour inclure le dossier d'installation dans le `PATH`.

> **Note** : Après l'installation, exécutez `source ~/.bashrc` ou `source ~/.zshrc` pour actualiser votre environnement shell.

## Désinstallation

Pour supprimer les scripts et restaurer votre environnement, exécutez :

```bash
./uninstall.sh
```

Ce script :
1. Supprime les liens symboliques des scripts installés.
2. Supprime le répertoire des scripts clonés.
3. Nettoie les modifications apportées aux fichiers `.bashrc` et `.zshrc`.

# Documentation des Scripts

### scripts/folderdump.sh

Le script `folderdump.sh` permet d'afficher le contenu des fichiers d'un répertoire avec plusieurs options avancées.

Fonctionnalités :
- **Filtrage par motif** : Utilisez `--pattern=<pattern>` pour filtrer les fichiers selon un motif spécifique (ex. `*.sh` pour les scripts Bash).
- **Exclusion de répertoires** : Utilisez `--exclude=<exclusions>` pour exclure certains répertoires du scan (par exemple `.git`, `node_modules`).
- **Copie dans le presse-papier** : Avec `-c` ou `--clipboard`, le contenu des fichiers est copié dans le presse-papier (via `clip.exe` sous WSL).
- **Syntax Highlighting** : Détecte automatiquement le type de fichier pour un rendu adapté des blocs de code (par exemple, `bash`, `python`, `javascript`).

> **Note** : Ce script est idéal pour examiner rapidement le contenu de plusieurs fichiers tout en évitant ceux qui sont inutiles (par exemple, `.git`, `__pycache__`).

