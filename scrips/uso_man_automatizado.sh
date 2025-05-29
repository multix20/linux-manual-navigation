#!/bin/bash
# Script para mostrar partes clave del manual de un comando

if [ -z "$1" ]; then
  echo "Uso: $0 <comando>"
  exit 1
fi

echo "Mostrando información para el comando: $1"
echo "--------------------------------------------"

echo -e "\n🧾 SYNOPSIS:"
man $1 | grep -A 6 '^SYNOPSIS' | head -n 10

echo -e "\n📘 DESCRIPTION:"
man $1 | grep -A 6 '^DESCRIPTION' | head -n 10
