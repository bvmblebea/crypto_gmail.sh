#!/bin/bash

api="https://cryptogmail.com/api"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_domains() {
	curl --request GET \
		--url "$api/domains.config.json" \
		--user-agent "$user_agent" \
		--header "accept: application/json" \
		--header "content-type: application/json"
}

function get_inbox() {
	curl --request GET \
		--url "$api/emails?inbox=$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json" \
		--header "content-type: application/json"
}

function get_message_info() {
	curl --request GET \
		--url "$api/emails/$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json" \
		--header "content-type: application/vnd.mailcare.v1+json"	
}
