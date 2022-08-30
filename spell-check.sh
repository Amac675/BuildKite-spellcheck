#!/bin/bash

PWD=${pwd}
output=${docker run --rm -ti -v $PWD:/workdir tmaier/markdown-spellcheck:latest --report "**/*.md"} $ 
echo $output
echo -e "\`\`\`term\n$output \033[0;31mtest\033[0m\n\`\`\`" | buildkite-agent annotate
# image exits with 1 when there are errors
exit 0
