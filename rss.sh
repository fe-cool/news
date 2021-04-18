#!/bin/bash

feed="src/feed.xml"
website_title="MDH • 前端情报"
website_link="https://fe-cool.github.io/news"
description="MDH • 前端情报"

urlencode() {
  # urlencode <string>
  old_lc_collate=$LC_COLLATE
  LC_COLLATE=C
  local length="${#1}"
  for (( i = 0; i < length; i++ )); do
    local c="${1:$i:1}"
    case $c in
      [a-zA-Z0-9.~_-]) printf '%s' "$c" ;;
      *) printf '%%%02X' "'$c" ;;
    esac
  done
  LC_COLLATE=$old_lc_collate
}

urldecode() {
  # urldecode <string>
  local url_encoded="${1//+/ }"
  printf '%b' "${url_encoded//%/\\x}"
}

newest_files=$( \
  git ls-files -z 'src/*.md' | \
  xargs -0 -n1 -I{} -- git log -1 --format="%at {}" {} | \
  sort -r | \
  head -n10 | \
  cut -d " " -f2-)

items=""
for file in ${newest_files[@]}; do
  echo $file
  filename_len=${#file}
  filename_end="$(expr $filename_len - 7)"
  title=$(grep "." $file | head -n1)
  encode=$(urldecode "${file:4:$filename_end}.html")
  link="$website_link/$encode"
  html=$(pandoc -f markdown -t html $file)
  date=$(git log -1 --format="%aD" -- $file)
  item="
  <item>
    <title><![CDATA[${title:2}]]></title>
    <link>$link</link>
    <guid isPermaLink=\"false\">$link</guid>
    <pubDate>$date</pubDate>
    <description><![CDATA[$html]]></description>
  </item>
  "
  items="$items $item"
done

rss_content="<?xml version=\"1.0\" encoding=\"utf-8\"?><rss xmlns:atom=\"http://www.w3.org/2005/Atom\" version=\"2.0\">
<channel>
  <title>$website_title</title>
  <atom:link href=\"$website_link/$feed\" rel=\"self\" type=\"application/rss+xml\" />
  <link>$website_link</link>
  <description>$description</description>
  $items
</channel>
</rss>"

echo "$rss_content" > $feed
echo ""
echo "✨ RSS Done!"