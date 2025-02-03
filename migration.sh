#!/bin/bash

# Durchläuft das Projektverzeichnis
for project in "d:/OpenRewriteTest/src/main/"; do
  # Überprüft, ob das Verzeichnis existiert
  if [ -d "$project" ]; then
    echo "Verzeichnis gefunden: $project"  # Gibt den Verzeichnisnamen aus
    cd "$project" || exit

    echo "Führe mod run aus für: $project"
    mod run --recipe org.openrewrite.java.migrate.jakarta.JavaxMigrationToJakarta --repository-path = d:/OpenRewriteTest/src/main/
  else
    echo "Verzeichnis $project nicht gefunden!"
  fi
done
