#### ShellScript.sh

##### 1. write a shell script to find all the matched paths with the word. Or find all the branches with the name Nov. 
         note:- take the input from user.

      #!/bin/bash
      echo "Branch name"
      read branchName

      echo "Project Area"
      read dirPath

      echo "Searching for the word $branchName under the directory $dirPath :" > paths.txt

      array=(`find $dirPath -name '*'$branchName'*'`)

      for path in "${array[@]}"
      do
         echo "Path-------->"$path >> paths.txt
      done

      echo "find the report in paths.txt" file.
