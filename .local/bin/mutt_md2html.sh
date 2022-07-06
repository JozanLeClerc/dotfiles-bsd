#!/bin/sh

commands_file="/tmp/neomutt_commands"
markdown_file="/tmp/neomutt-$(hostname -s)-$(id -u)-$(date +%s)"
html_file="/tmp/neomutt-$(hostname -s)-$(id -u)-$(date +%s).html"

cat - >"$markdown_file"
printf 'push ' >"$commands_file"

img_count=$(grep -Eo '!\[[^]]*\]\([^)]+' "$markdown_file" |
		  cut -d '(' -f 2 |
		  grep -Evc '^(cid:|https?://)')
if [ "$img_count" -gt 0 ]; then
	printf '<first-entry><tag-entry><group-related>' >>"$commands_file"
	printf '<attach-file>"%s"<enter><first-entry><detach-file>' \
		"$markdown_file" >>"$commands_file"
	grep -Eo '!\[[^]]*\]\([^)]+' "$markdown_file" | cut -d '(' -f 2 |
		grep -Ev '^(cid:|https?://)' |
		while read -r file; do
			real_file=$(echo "$file" | sed "s#~#$HOME#g")
			id="cid:$(md5 "$real_file" | rev | cut -d ' ' -f 1 | rev)"
			sed -i '' "s#$file#$id#g" "$markdown_file"
			{
				printf '<attach-file>"%s"<enter>' "$real_file"
				printf '<toggle-disposition>'
				printf '<edit-content-id>^u"%s"<enter>' "$id" 
				printf '<tag-entry>' 
			} >>"$commands_file"
		done
fi

pandoc -f markdown -t html5 --standalone "$markdown_file" >"$html_file"

{
	printf '<attach-file>"%s"<enter>' "$html_file"
	printf '<toggle-disposition>'
	printf '<toggle-unlink>'
	printf '<tag-entry><previous-entry><tag-entry>'
	printf '<group-alternatives>'
} >>"$commands_file"
# if [ "$img_count" -gt 0 ]; then
# 	grep -Eo '!\[[^]]*\]\([^)]+' "${markdown_file}.orig" | cut -d '(' -f 2 |
# 		grep -Ev '^(cid:|https?://)' |
# 		while read -r file; do
# 			real_file=$(echo "$file" | sed "s#~#$HOME#g")
# 			id="cid:$(md5 "$real_file" | rev | cut -d ' ' -f 1 | rev)"
# 	done
# fi
