#!/bin/sh

rm -fr *.txt

echo -en "Enter Username:"
read Username

echo -en "Enter Passowrd:"
read -s Passowrd

curl -# -i -u ${Username}:${Passowrd} https://api.github.com/user/orgs | grep -w '"login":' | awk ' /'"login"'/ {print $1,$2} ' > tempOrgs.txt

awk '{ print $2 }' tempOrgs.txt > tempOrgsList.txt

awk -F',' '{gsub(/"/, "", $1); print $1}' tempOrgsList.txt > finalOrgsNames.txt

while read org; do 

	echo "Org name: ${org}" >> OrgsAndRepos.txt
	
	echo "Org name: ${org}" >> branches.txt
	
	curl -# -i -u ${Username}:${Passowrd} https://api.github.com/orgs/${org}/repos?type=all | grep -w '"name":' | awk ' /'"name"'/ {print $1,$2} ' > ${Org}_tempRepos.txt

	awk '{ print $2 }' ${Org}_tempRepos.txt > ${Org}_tempReposList.txt

	awk -F',' '{gsub(/"/, "", $1); print $1}'  ${Org}_tempReposList.txt > tempfinalReposNames.txt
	
	echo "" >> OrgsAndRepos.txt
	cat tempfinalReposNames.txt >> OrgsAndRepos.txt
	echo "-------------------------------------" >> OrgsAndRepos.txt
	echo "" >> OrgsAndRepos.txt
	
	while read repo; do 

		echo "" >> branches.txt
		echo "Repo name: ${repo}" >> branches.txt
		echo "Branches:" >> branches.txt
		
		curl -# -i -u ${Username}:${Passowrd} https://api.github.com/repos/${org}/${repo}/branches | grep -w '"name":' | awk ' /'"name"'/ {print $1,$2} ' > tempBranches.txt
		
		awk '{ print $2 }' tempBranches.txt >> branches.txt

		echo "" >> branches.txt
		echo "---------------------------" >> branches.txt

	done < tempfinalReposNames.txt

	echo "===================================================================" >> branches.txt

done < finalOrgsNames.txt

rm -fr *temp*.txt
