#!/bin/sh

commandsFile="/tmp/neomutt-commands"
markdownFile="/tmp/neomutt-markdown"
htmlFile="/tmp/neomutt-$(hostname -s)-$(id -u)-$(date +%s).html"

cat - > "$markdownFile"
echo -n "push " > "$commandsFile"

pandoc -f markdown -t html5 --standalone "$markdownFile" > "$htmlFile"

# Attach the html file
echo -n "<attach-file>\"$htmlFile\"<enter>" >> "$commandsFile"

# Set it as inline
echo -n "<toggle-disposition>" >> "$commandsFile"

# Tell neomutt to delete it after sending
echo -n "<toggle-unlink>" >> "$commandsFile"

# Select both the html and markdown files
echo -n "<tag-entry><previous-entry><tag-entry>" >> "$commandsFile"

# Group the selected messages as alternatives
echo -n "<group-alternatives>" >> "$commandsFile"
