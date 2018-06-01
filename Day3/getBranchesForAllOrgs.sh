rm -fr *.txt

curl -i -u venkatasykam:Forgot#1987 https://api.github.com/user/orgs | grep -w '"login":' | awk ' /'"login"'/ {print $1,$2} ' > tempOrgs.txt

awk '{ print $2 }' tempOrgs.txt > tempOrgsList.txt

awk -F',' '{gsub(/"/, "", $1); print $1}' repolist.txt > finalOrgsNames.txt

rm -fr temp*.txt

while read org; do 

	echo "Repo name: ${repo}" >> branches.txt
	
	curl -i -u venkatasykam:Forgot#1987 https://api.github.com/orgs/${org}/repos?type=all | grep -w '"name":' | awk ' /'"name"'/ {print $1,$2} ' > repos.txt

	echo ""
	echo "=================================" >> finalrepo.txt

done < finalOrgsNames.txt

echo'
curl -i -u venkatasykam:Forgot#1987 https://api.github.com/orgs/DayToDayDevOpsCourse/repos?type=all | grep -w '"name":' | awk ' /'"name"'/ {print $1,$2} ' > repos.txt

awk '{ print $2 }' repos.txt > repolist.txt

awk -F',' '{gsub(/"/, "", $1); print $1}' repolist.txt > finalRepoNames.txt

while read repo; do 

	echo "Repo name: ${repo}" >> branches.txt
	
	curl -i -u venkatasykam:Forgot#1987 https://api.github.com/repos/DayToDayDevOpsCourse/MavenDayToDayCourse/branches | grep -w '"name":' | awk ' /'"name"'/ {print $1,$2} ' >> branches.txt
	
	echo ""
	echo "=================================" >> branches.txt

done < finalRepoNames.txt
'