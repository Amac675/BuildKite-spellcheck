#!/bin/bash

docker run --rm -ti -v $(pwd):/workdir tmaier/markdown-spellcheck:latest --report "**/*.md"

# image exits with 1 when there are errors
exit 0