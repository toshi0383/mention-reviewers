#!/bin/sh -l

mentioned_users=$(cat $GITHUB_EVENT_PATH | jq '.pull_request.requested_reviewers | map("@" + .login) | join(" ")' | sed 's/"//g')
echo "Mentioned users: $mentioned_users"

echo "mentioned_names_string=$mentioned_users" >> $GITHUB_ENV
