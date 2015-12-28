#!/bin/bash

echo -n "GitHub User: "
read USER

echo -n "GitHub Password: "
read -s PASS

echo ""
echo -n "GitHub Repo (e.g. foo/bar): "
read REPO

REPO_USER=$(echo "$REPO" | cut -f1 -d /)

REPO_NAME=$(echo "$REPO" | cut -f2 -d /)

# Delete default labels
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/bug"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/duplicate"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/enhancement"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/help+wanted"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/invalid"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/question"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/wontfix"

# Create labels
curl --user "$USER:$PASS" --include --request POST --data '{"name":"exp/advanced","color":"eb6420"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"exp/intermediate","color":"bfe5bf"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"exp/beginner","color":"c7def8"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"kind/help wanted","color":"006b75"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"kind/bug","color":"e11d21"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"kind/enhancement","color":"84b6eb"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"kind/question","color":"cc317c"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"tech/devops","color":"fbca04"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"tech/go","color":"0052cc"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"tech/js","color":"009800"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"tech/mongodb","color":"5319e7"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"triage/duplicate","color":"cccccc"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"triage/invalid","color":"e6e6e6"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"triage/wontfix","color":"ffffff"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

# Create Milestones
curl --user "$USER:$PASS" --include --request POST --data '{"title":"Trust v.1b (Partner)","state":"open","description":"Ready for our beta partners to use with the understanding that we will work with them to resolve issues.","due_on":"2016-01-01T01:00:00Z"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/milestones"
curl --user "$USER:$PASS" --include --request POST --data '{"title":"Trust v.2b (Open)","state":"open","description":"Stable, feature-functional, documented and ready to use without our involvement.  All breaking issues are resolved, all others are documented."}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/milestones"

