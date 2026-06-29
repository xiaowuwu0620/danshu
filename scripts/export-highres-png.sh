#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 page-1.pdf [page-2.pdf ...]" >&2
  exit 2
fi

for pdf in "$@"; do
  base="${pdf%.pdf}"
  out="${base}-4k.png"
  # A4 portrait at 2480 x 3508: crisp enough for WeChat / preview, below huge-file territory.
  sips -s format png -z 3508 2480 "$pdf" --out "$out" >/dev/null
  sips -g pixelWidth -g pixelHeight "$out"
done
