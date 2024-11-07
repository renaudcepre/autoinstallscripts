File: ./.idea/inspectionProfiles/Project_Default.xml
```
<component name="InspectionProjectProfileManager">
  <profile version="1.0">
    <option name="myName" value="Project Default" />
    <inspection_tool class="DuplicatedCode" enabled="true" level="WEAK WARNING" enabled_by_default="true">
      <Languages>
        <language minSize="109" name="Python" />
      </Languages>
    </inspection_tool>
    <inspection_tool class="PyBehaveInspection" enabled="true" level="WARNING" enabled_by_default="true" />
    <inspection_tool class="PyMissingTypeHintsInspection" enabled="true" level="TEXT ATTRIBUTES" enabled_by_default="true" editorAttributes="INFO_ATTRIBUTES" />
    <inspection_tool class="PyPackageRequirementsInspection" enabled="false" level="WARNING" enabled_by_default="false">
      <option name="ignoredPackages">
        <value>
          <list size="5">
            <item index="0" class="java.lang.String" itemvalue="PyJWT" />
            <item index="1" class="java.lang.String" itemvalue="fastapi" />
            <item index="2" class="java.lang.String" itemvalue="pydantic" />
            <item index="3" class="java.lang.String" itemvalue="permit" />
            <item index="4" class="java.lang.String" itemvalue="uvicorn" />
          </list>
        </value>
      </option>
    </inspection_tool>
    <inspection_tool class="PyPep8Inspection" enabled="true" level="WEAK WARNING" enabled_by_default="true">
      <option name="ignoredErrors">
        <list>
          <option value="W292" />
          <option value="E701" />
        </list>
      </option>
    </inspection_tool>
    <inspection_tool class="PyProtocolInspection" enabled="false" level="WARNING" enabled_by_default="false" />
    <inspection_tool class="PyUnresolvedReferencesInspection" enabled="true" level="WARNING" enabled_by_default="true">
      <option name="ignoredIdentifiers">
        <list>
          <option value="sqlalchemy.engine.result.Result.rowcount" />
        </list>
      </option>
    </inspection_tool>
  </profile>
</component>```
File: ./.idea/inspectionProfiles/profiles_settings.xml
```
<component name="InspectionProjectProfileManager">
  <settings>
    <option name="USE_PROJECT_PROFILE" value="false" />
    <version value="1.0" />
  </settings>
</component>```
File: ./.idea/modules.xml
```
<?xml version="1.0" encoding="UTF-8"?>
<project version="4">
  <component name="ProjectModuleManager">
    <modules>
      <module fileurl="file://$PROJECT_DIR$/.idea/autoinstallscripts.iml" filepath="$PROJECT_DIR$/.idea/autoinstallscripts.iml" />
    </modules>
  </component>
</project>```
File: ./.idea/autoinstallscripts.iml
```
<?xml version="1.0" encoding="UTF-8"?>
<module type="PYTHON_MODULE" version="4">
  <component name="NewModuleRootManager">
    <content url="file://$MODULE_DIR$" />
    <orderEntry type="inheritedJdk" />
    <orderEntry type="sourceFolder" forTests="false" />
  </component>
</module>```
File: ./.idea/misc.xml
```
<?xml version="1.0" encoding="UTF-8"?>
<project version="4">
  <component name="Black">
    <option name="sdkName" value="/usr/bin/python3.10 (29)" />
  </component>
  <component name="ProjectRootManager" version="2" project-jdk-name="/usr/bin/python3.10 (29)" project-jdk-type="Python SDK" />
</project>```
File: ./.idea/.gitignore
```
# Default ignored files
/shelf/
/workspace.xml
# Editor-based HTTP Client requests
/httpRequests/
# Datasource local storage ignored files
/dataSources/
/dataSources.local.xml
```
File: ./.idea/workspace.xml
```
<?xml version="1.0" encoding="UTF-8"?>
<project version="4">
  <component name="AutoImportSettings">
    <option name="autoReloadType" value="SELECTIVE" />
  </component>
  <component name="ChangeListManager">
    <list default="true" id="27d12e01-b52a-426c-8c30-69adbbcdc896" name="Changes" comment="" />
    <option name="SHOW_DIALOG" value="false" />
    <option name="HIGHLIGHT_CONFLICTS" value="true" />
    <option name="HIGHLIGHT_NON_ACTIVE_CHANGELIST" value="false" />
    <option name="LAST_RESOLUTION" value="IGNORE" />
  </component>
  <component name="ProjectColorInfo"><![CDATA[{
  "associatedIndex": 8
}]]></component>
  <component name="ProjectId" id="2oQj6H1qDdFpEvknwoHWA6hte5t" />
  <component name="ProjectViewState">
    <option name="hideEmptyMiddlePackages" value="true" />
    <option name="showLibraryContents" value="true" />
  </component>
  <component name="PropertiesComponent"><![CDATA[{
  "keyToString": {
    "RunOnceActivity.ShowReadmeOnStart": "true",
    "last_opened_file_path": "//wsl.localhost/Ubuntu/home/ceprer/autoinstallscripts",
    "node.js.detected.package.eslint": "true",
    "node.js.detected.package.tslint": "true",
    "node.js.selected.package.eslint": "(autodetect)",
    "node.js.selected.package.tslint": "(autodetect)",
    "nodejs_package_manager_path": "npm",
    "vue.rearranger.settings.migration": "true"
  }
}]]></component>
  <component name="SharedIndexes">
    <attachedChunks>
      <set>
        <option value="bundled-js-predefined-1d06a55b98c1-0b3e54e931b4-JavaScript-PY-241.18034.82" />
        <option value="bundled-python-sdk-975db3bf15a3-2767605e8bc2-com.jetbrains.pycharm.pro.sharedIndexes.bundled-PY-241.18034.82" />
      </set>
    </attachedChunks>
  </component>
  <component name="SpellCheckerSettings" RuntimeDictionaries="0" Folders="0" CustomDictionaries="0" DefaultDictionary="application-level" UseSingleDictionary="true" transferred="true" />
  <component name="TaskManager">
    <task active="true" id="Default" summary="Default task">
      <changelist id="27d12e01-b52a-426c-8c30-69adbbcdc896" name="Changes" comment="" />
      <created>1730808516852</created>
      <option name="number" value="Default" />
      <option name="presentableId" value="Default" />
      <updated>1730808516852</updated>
      <workItem from="1730808517861" duration="1057000" />
    </task>
    <servers />
  </component>
  <component name="TypeScriptGeneratedFilesManager">
    <option name="version" value="3" />
  </component>
</project>```
File: ./install.sh
```
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
echo "Ensuite, vous pourrez utiliser les commandes : $(ls -1 "$INSTALL_DIR" | tr '\n' ' ')"```
File: ./uninstall.sh
```
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

echo "Désinstallation terminée! Veuillez redémarrer votre terminal ou exécuter 'source ~/.bashrc'"```
File: ./scripts/folderdump.sh
```
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

```
