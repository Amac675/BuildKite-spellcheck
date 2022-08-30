#!/bin/bash

docker run --rm -ti -v $(pwd):/workdir tmaier/markdown-spellcheck:latest --report "**/*.md"  
echo -e "\`\`\`term\nThis is a \033[0;31mtest\033[0m\n\`\`\`" | buildkite-agent annotate
# image exits with 1 when there are errors
exit 0
