#!/usr/bin/env bash
# Flash Bounty Program — GitHub Label Setup Script
# Creates all bounty labels across lnflash repos
# Usage: ./create-bounty-labels.sh [repo...]
# Default: runs on all Flash repos

set -euo pipefail

REPOS=(
  lnflash/.github
  lnflash/flash
  lnflash/flash-mobile
  lnflash/flash-pos
  lnflash/flash-pay
  lnflash/flash-site
  lnflash/cashu-javacard
  lnflash/cashu-client
  lnflash/flash-api-docs
  lnflash/frappe-flash-admin
)

# Override with args if provided
if [[ $# -gt 0 ]]; then
  REPOS=("$@")
fi

# Labels: name|color|description
LABELS=(
  # Bounty marker
  "ð° bounty|F5A623|Flash bounty â get paid in Bitcoin"
  # Levels
  "â¡ spark|7ED321|5k-25k sats â small fix, doc, UI tweak"
  "ð¥ flame|F8E71C|25k-75k sats â medium feature or integration"
  "ð eruption|F5A623|75k-150k sats â significant feature or refactor"
  "ðï¸ summit|D0021B|150k-250k+ sats â major feature or architecture"
  # Categories
  "ð± mobile|4A90D9|Mobile app work (iOS/Android)"
  "ð¥ï¸ backend|9B59B6|Backend/server-side work"
  "ð web|1ABC9C|Web frontend work"
  "ð docs|95A5A6|Documentation"
  "ð§ª testing|E67E22|Tests and QA"
  "ð§ devops|34495E|Infrastructure and DevOps"
  "ð¨ design|E91E63|UI/UX design work"
  "ð security|C0392B|Security-related work"
  "ðï¸ community|2ECC71|Community and outreach"
  "â¡ lightning|F39C12|Lightning Network specific"
  # Status
  "triage|FBCA04|Awaiting team review"
  "approved|0E8A16|Bounty approved â open for claims"
  "claimed|1D76DB|Someone has claimed this bounty"
  "in-progress|5319E7|Work is underway"
  "review|BFD4F2|PR open, under review"
  "paid|0E8A16|Bounty paid via Lightning"
)

create_label() {
  local repo="$1"
  local name="$2"
  local color="$3"
  local desc="$4"
  
  gh api repos/${repo}/labels \
    --method POST \
    --field name="${name}" \
    --field color="${color}" \
    --field description="${desc}" \
    2>/dev/null && echo "  â ${name}" || echo "  â ${name} (already exists)"
}

for repo in "${REPOS[@]}"; do
  echo "
Creating labels for ${repo}..."
  for label_def in "${LABELS[@]}"; do
    IFS='|' read -r name color desc <<< "${label_def}"
    create_label "${repo}" "${name}" "${color}" "${desc}"
  done
done

echo "
â Done! All bounty labels created."
