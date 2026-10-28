#!/usr/bin/env bash
# saudacao.sh — cumprimenta quem está no arquivo de configuração
set -euo pipefail
. "$(dirname "$0")/../config/app.env"
printf 'Olá, %s!\n' "${NOME:?NOME não definido em config/app.env}"
