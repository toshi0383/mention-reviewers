#!/bin/sh -l

mentioned_users=$(cat $GITHUB_EVENT_PATH | jq '.pull_request.requested_reviewers | map("@" + .login) | join(" ")')
echo "Mentioned users: $mentioned_users"

echo "a=b" >> $GITHUB_ENV
echo "mentioned_names_string=$mentioned_users" >> $GITHUB_ENV
