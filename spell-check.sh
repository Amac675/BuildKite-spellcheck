#!/bin/bash

docker run --rm -ti -v ${pwd}:/workdir tmaier/markdown-spellcheck:latest --report "**/*.md" | buildkite-agent annotate "spellcheck result" 
# image exits with 1 when there are errors
exit 0
