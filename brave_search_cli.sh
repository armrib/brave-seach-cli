#!/bin/bash

# Usage example: search how to extract a field from an object in an array with jq
# Packages used: curl, sed, jq, w3m
function search() { 
	(($#)) && \
    s=$(curl "https://search.brave.com/search?q=$(echo $* | sed -e 's/ /+/g')&source=web" 2> /dev/null) && (\
    ((echo $s  | w3m -T text/html -dump | grep -q '^Code LLM') && curl "https://search.brave.com/api/codellm?key=codellm%3A$(echo $* | sed -e 's/ /%20/g')%3Aus%3Aen" && echo) \
    || ((echo $s  | w3m -T text/html -dump | grep -q '^Summarizer') && curl "https://search.brave.com/api/summarizer?key=$(echo $* | sed -e 's/ /%20/g')%3Aus%3Aen" 2> /dev/null | jq -r '.results[].text' | w3m -T text/html -dump && echo) \
    ) || echo $s | w3m -T text/html -o confirm_qq=false;
}
