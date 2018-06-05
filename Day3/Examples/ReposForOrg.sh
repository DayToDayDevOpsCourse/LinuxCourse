#!/bin/sh

rm -fr *.txt

echo -en "Enter the org name:"
read Org

echo -en "Enter Username:"
read Username

echo -en "Enter Passowrd:"
read -s Passowrd


	echo "Org name: ${Org}" >> finalReposNames.txt
	
	curl -i -u ${Username}:${Passowrd} https://api.github.com/orgs/${Org}/repos?type=all | grep -w '"name":' | awk ' /'"name"'/ {print $1,$2} ' > tempRepos.txt

	awk '{ print $2 }' tempRepos.txt >> finalReposNames.txt
	echo ""
	echo "=================================" >> finalReposNames.txt


rm -fr temp*.txt
