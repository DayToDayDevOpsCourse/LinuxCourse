#### ShellScript.sh

##### 1. echo - example-1

         #!/bin/sh

         echo Hello-1

         echo "Hello-2"

##### 2. echo - example-2

         #!/bin/sh

         echo "Hello      World"       
         echo "Hello World"
         echo "Hello * World"
         echo Hello * World
         echo Hello	World
         echo "Hello" World
         echo Hello "     " World
         echo "Hello "*" World"
         echo `hello` world # Shell assumes hello is the command!
         echo 'hello' world

##### 3. read example-1

         #!/bin/sh
         
         echo What is your name?

         read MY_NAME

         echo "Hello $MY_NAME - Welcome to shell script."

##### 4. read example-2

         #!/bin/sh

         echo "What is your name?"

         read USER_NAME

         echo "Hello $USER_NAME"

         echo "I will create you a file called ${USER_NAME}_file"

         touch "${USER_NAME}_file.txt"

##### 5. for loop example-1

         #!/bin/sh

         for i in 1 2 3 4 5
         do

           echo "Looping ... number $i"

         done

##### 6. for loop example-2

         #!/bin/sh

         for i in hello 1 * 2 goodbye 
         do

           echo "Looping ... i is set to $i"

         done

##### 7. for loop example-3

         #!/bin/sh

         #Run this command: mkdir rc{0,1,2,3,4,5,6,S}.d
         #Alternate solution with for loop as shown below.

         for runlevel in 0 1 2 3 4 5 6 S
         do
           mkdir rc${runlevel}.d
         done

###### 8. for loop example-4 : write a shell script to find all the matched paths with the word. Or find all the branches with the name Nov. 
         note:- read the input from user.

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
      
###### 9. while loop example-1

         #!/bin/sh

         INPUT_STRING=hello

         while [ "$INPUT_STRING" != "bye" ]
         do

           echo "Please type something in (bye to quit)"
           read INPUT_STRING
           echo "You typed: $INPUT_STRING"

         done
         
###### 10. while loop example-2

         #!/bin/sh

         # Invinity loop, you have to press Ctrl + c to comeout from the loop

         while :

         do

           echo "Please type something in (^C to quit)"

           read INPUT_STRING

           echo "You typed: $INPUT_STRING"

         done

###### 10. while loop example-3

         #!/bin/sh

         while read line
         do
         
           echo "Each Line: $line"

         done < whileLoop-1.sh

###### 11. while loop example-4
