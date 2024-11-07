#!/bin/bash

print_usage() {
  echo "Usage: $0 <path> [-c|--clipboard] [--pattern=<pattern>] [--exclude=<exclusions>]"
  echo "Options:"
  echo "  -c, --clipboard          Copies the output to the clipboard (uses clip.exe)"
  echo "  --pattern=<pattern>      Filters files according to the pattern"
  echo "  --exclude=<exclusions>   Comma-separated list of paths to exclude"
  exit 1
}

if [ -z "$1" ]; then
  print_usage
fi

PATH_TO_SEARCH="$1"
PATTERN="*"
USE_CLIPBOARD=false
EXCLUSIONS=".git,.idea,.vscode,node_modules,.venv,venv,__pycache__,dist,build,*.log,*.tmp,.DS_Store,.pytest_cache,.mypy_cache,.tox,.coverage,coverage.xml,.nyc_output,*.pyc,*.pyo,Thumbs.db,.sass-cache,*.egg-info,yarn.lock,package-lock.json,pip-wheel-metadata,.parcel-cache,.next,target,.gradle,.history,.ipynb_checkpoints"
shift

while [[ $# -gt 0 ]]; do
  case $1 in
    -c|--clipboard)
      USE_CLIPBOARD=true
      shift
      ;;
    --pattern=*)
      PATTERN="${1#--pattern=}"
      shift
      ;;
    --exclude=*)
      EXCLUSIONS="${1#--exclude=}"
      shift
      ;;
    *)
      print_usage
      ;;
  esac
done

# Fonction pour déterminer le type de code pour le bloc en fonction de l'extension
get_language_type() {
  case "$1" in
    *.py) echo "python" ;;
    *.js) echo "javascript" ;;
    *.ts) echo "typescript" ;;
    *.sh) echo "bash" ;;
    *.html) echo "html" ;;
    *.css) echo "css" ;;
    *.json) echo "json" ;;
    *.xml) echo "xml" ;;
    *.yaml|*.yml) echo "yaml" ;;
    *.md) echo "markdown" ;;
    *.cpp|*.hpp) echo "cpp" ;;
    *.java) echo "java" ;;
    *) echo "" ;; # Aucun langage spécifique par défaut
  esac
}

dump_content() {
  # Convert exclusions to find syntax
  IFS=',' read -ra EXCLUDE_PATTERNS <<< "$EXCLUSIONS"
  EXCLUDE_ARGS=()
  for EXCLUDE in "${EXCLUDE_PATTERNS[@]}"; do
    EXCLUDE_ARGS+=(-path "$PATH_TO_SEARCH/$EXCLUDE" -prune -o)
  done

  # Execute the find command with exclusions and pattern
  find "$PATH_TO_SEARCH" "${EXCLUDE_ARGS[@]}" -type f -name "$PATTERN" -print | while IFS= read -r FILE; do
    # Skip empty files
    if [ ! -s "$FILE" ]; then
      continue
    fi

  LANGUAGE=$(get_language_type "$FILE")

  echo "File: $FILE"
  if [ -n "$LANGUAGE" ]; then
    echo '```'$LANGUAGE
  else
    echo '```'
  fi

  cat "$FILE"
  echo '```'
  done
}

if [ "$USE_CLIPBOARD" = true ]; then
  # Check if clip.exe is available (WSL)
  if command -v clip.exe &> /dev/null; then
    # Capture output and line count
    LINE_COUNT=$(dump_content | tee >(iconv -f UTF-8 -t UTF-16LE | clip.exe) | wc -l)
    echo "$LINE_COUNT lines copied to clipboard"
  else
    echo "Error: clip.exe is not available. Are you running under WSL?"
    exit 1
  fi
else
  dump_content
fi
