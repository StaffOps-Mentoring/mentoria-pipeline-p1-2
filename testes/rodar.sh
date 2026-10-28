#!/usr/bin/env bash
set -euo pipefail
saida=$(./app/saudacao.sh)
[[ "$saida" == "Olá, mentoria!" ]] || { echo "esperado 'Olá, mentoria!', veio '$saida'" >&2; exit 1; }
echo "ok: $saida"
