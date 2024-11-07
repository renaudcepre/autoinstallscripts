#!/bin/bash

print_usage() {
  echo "Usage: $0 <path> [-c|--clipboard] [--pattern=<pattern>]"
  echo "Options:"
  echo "  -c, --clipboard    Copies the output to the clipboard (uses clip.exe)"
  echo "  --pattern=<pattern>    Filters files according to the pattern"
  exit 1
}

if [ -z "$1" ]; then
  print_usage
fi

PATH_TO_SEARCH="$1"
PATTERN="*"
USE_CLIPBOARD=false
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
    *)
      print_usage
      ;;
  esac
done

dump_content() {
  find "$PATH_TO_SEARCH" -type f -name "$PATTERN" | while IFS= read -r FILE; do
    # Skip empty files
    if [ ! -s "$FILE" ]; then
      continue
    fi

    echo "File: $FILE"
    echo '```'
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

