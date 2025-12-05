#!/bin/bash

if [ -z "$1" ]; then
  echo "記事のタイトルを指定してください．"
  echo "Usage: $0 <article-title>"
  exit 1
fi

TITLE="$1"
DATE=$(date +%Y-%m-%d)
DIR_NAME="${DATE}-${TITLE}"
DIR_PATH="content/blog/${DIR_NAME}"

mkdir -p "$DIR_PATH"

cp template.md "$DIR_PATH/index.md"
echo "Created: $DIR_PATH/index.md"
