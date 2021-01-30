#!/usr/bin/env sh

set -e

cd $(dirname "$0")

asciidoctor \
  -r ./lib/PKGRef-inline-macro.rb \
  -r asciidoctor-diagram \
  index.adoc
