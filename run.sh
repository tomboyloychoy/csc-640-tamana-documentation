#!/usr/bin/env bash
set -eu

cd "$(dirname "$0")"

if ! command -v hugo >/dev/null 2>&1; then
  printf '%s\n' "Error: Hugo is required. Install it from https://gohugo.io/installation/." >&2
  exit 1
fi

case "${1:-build}" in
  serve)
    shift
    exec hugo server -D "$@"
    ;;
  build)
    if [ "$#" -gt 0 ]; then
      shift
    fi
    hugo --minify "$@"
    for page in \
      public/index.html \
      public/about/index.html \
      public/setup/index.html \
      public/proposal/index.html \
      public/architecture/index.html \
      public/api/index.html \
      public/deployment/index.html \
      public/progress/index.html \
      public/peer-review/index.html
    do
      if [ ! -s "$page" ]; then
        printf 'Error: expected generated page %s\n' "$page" >&2
        exit 1
      fi
    done
    printf '%s\n' "Hugo build and required-page checks passed."
    ;;
  *)
    printf 'Usage: %s [serve|build]\n' "$0" >&2
    exit 2
    ;;
esac
