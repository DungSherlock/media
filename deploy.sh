#!/bin/bash
#rm -r public
#hugo -s -d /public
# This here is waiting for the time when minify starts working properly
# minify -r -v --match=\.*ml ~/sites/saimiri.io/public
#find public/ -type f \( -name '*.html' -o -name '*.js' -o -name '*.css' -o -name '*.xml' -o -name '*.svg' \) -exec gzip -v -k -f --best  \;
git add -A .
git commit -a -m "Build $CI_BUILD_ID from GitLab-CI" --allow-empty
git push
echo "Đã deploy xong!"
exit
