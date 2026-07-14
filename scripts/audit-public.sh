#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

if find . -type f \( -name '.env*' -o -name '*.pem' -o -name '*.key' -o -name '*.p12' -o -name '*.sqlite' \) -not -path './.git/*' | grep -q .; then
  echo 'Blocked: credential or private data file detected.'
  exit 1
fi

if find . -type d \( -name src -o -name server -o -name deployment -o -name content -o -name methods \) -not -path './.git/*' | grep -q .; then
  echo 'Blocked: private implementation directory detected.'
  exit 1
fi

if rg -n --hidden --glob '!.git/**' --glob '!scripts/audit-public.sh' '(api[_-]?key|access[_-]?token|client[_-]?secret|private[_-]?key)[[:space:]]*[:=][[:space:]]*[^$<{[:space:]]+' .; then
  echo 'Blocked: possible hardcoded secret detected.'
  exit 1
fi

echo 'Public exposure audit passed.'
