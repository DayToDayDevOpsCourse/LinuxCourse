#!/bin/sh

rm -fr *.txt

echo -en "Enter Username:"
read Username

echo -en "Enter Passowrd:"
read -s Passowrd

curl -i -u ${Username}:${Passowrd} https://api.github.com/user/orgs | grep -w '"login":' | awk ' /'"login"'/ {print $1,$2} ' > tempOrgs.txt

awk '{ print $2 }' tempOrgs.txt > tempOrgsList.txt

awk -F',' '{gsub(/"/, "", $1); print $1}' tempOrgsList.txt > finalOrgsNames.txt

while read org; do 

	echo "Org name: ${org}" >> finalReposNames.txt
	
	curl -i -u ${Username}:${Passowrd} https://api.github.com/orgs/${org}/repos?type=all | grep -w '"name":' | awk ' /'"name"'/ {print $1,$2} ' > tempRepos.txt

	awk '{ print $2 }' tempRepos.txt >> finalReposNames.txt
	echo ""
	echo "=================================" >> finalReposNames.txt

done < finalOrgsNames.txt

rm -fr temp*.txt
