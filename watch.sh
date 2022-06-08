#!/bin/bash
exit $(curl -s https://api.github.com/repos/naver/fe-news/commits/REL1_36 | jq -r "((now - (.commit.author.date | fromdateiso8601) )  / (60*60*24)  | trunc)")