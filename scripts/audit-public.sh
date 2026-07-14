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

if [[ ! -f assets/readme-banner.png || ! -f assets/ig-logo-full.png ]]; then
  echo 'Blocked: the public repository banner or canonical logo asset is missing.'
  exit 1
fi

if ! rg -q 'assets/readme-banner\.png' README.md; then
  echo 'Blocked: README does not use the approved public repository banner.'
  exit 1
fi

if ! rg -q 'utm_content=readme_banner' README.md; then
  echo 'Blocked: README banner is missing its tracked product link.'
  exit 1
fi

if ! rg -q 'Free access includes the competitive gap workflow and a positioning diagnosis' README.md; then
  echo 'Blocked: README does not distinguish free access from member methods.'
  exit 1
fi

if rg -q 'secure sign-in|Give your AI the product marketing method|broad error category' README.md assets/readme-banner.svg docs/architecture.md; then
  echo 'Blocked: public copy overstates the access, method, or analytics boundary.'
  exit 1
fi

echo 'Public exposure audit passed.'
