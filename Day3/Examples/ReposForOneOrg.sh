#!/bin/sh

rm -fr *.txt

echo -en "Enter the org name:"
read Org

echo -en "Enter Username:"
read Username

echo -en "Enter Passowrd:"
read -s Passowrd


echo "Org name: ${Org}" >> OrgsAndRepos.txt

curl -i -u ${Username}:${Passowrd} https://api.github.com/orgs/${Org}/repos?type=all | grep -w '"name":' | awk ' /'"name"'/ {print $1,$2} ' > ${Org}_tempRepos.txt

awk '{ print $2 }' ${Org}_tempRepos.txt > ${Org}_tempReposList.txt

awk -F',' '{gsub(/"/, "", $1); print $1}'  ${Org}_tempReposList.txt > finalReposNames.txt

echo "" >> OrgsAndRepos.txt
cat finalReposNames.txt >> OrgsAndRepos.txt

rm -fr *temp*.txt
