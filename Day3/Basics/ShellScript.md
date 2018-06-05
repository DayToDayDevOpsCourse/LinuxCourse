#### ShellScript.sh

##### 1. echo - example-1

         #!/bin/sh

         echo Hello-1

         echo "Hello-2"

##### 2. echo - example-2

         Run this command before executing the below script:
         echo *
         echo "*"

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

###### 11. if statement: example-1

         #!/bin/sh

         var1=-10

         if [ "$var1" -lt "0" ]
         then
           echo "$var1 is less than zero"
         fi

###### 12. if statement: example-2

         #!/bin/sh

         string1="DevOps"

         echo "-----equals example-----"

         if [ "$string1" = "DevOps" ]

         then

                  echo "Matched"

         fi

###### 13. if statement: example-3

         #!/bin/sh

         string1="DevOps"

         echo "-----equals example-----"

         if [ "$string1" = "DevOps" ]

         then

                  echo "Matched"

         fi

         echo ""
         echo "-----Not equals example-----"


         if [ "$string1" != "DevOpss" ]

         then

                  echo "does NOT matched"

         fi

         echo ""
         echo "-----if-else example-----"

         if [ "$string1" = "DevOpss" ]

         then

                  echo "matched"

         else 

                  echo "does NOT matched"

         fi
         
###### 14. if statement: example-4.1: 

         #!/bin/sh
         X=0
         while [ -n "$X" ]
         do
           echo -en "Enter some text (press enter to quit): "
           read X
           echo "You said: $X"
         done

###### 14. if statement: example-4.2: 

         #!/bin/sh
         X=0
         while [ -n "$X" ]
         do
           echo "Enter some text (RETURN to quit)"
           read X
           if [ -n "$X" ]; then
             echo "You said: $X"
           fi
         done
         
###### 15. case: example-1:

         #!/bin/sh

         echo "Please talk to me ..."
         while :
         do
           read INPUT_STRING
           case $INPUT_STRING in
                  hello)
                           echo "Hello yourself!"
                           ;;
                  bye)
                           echo "See you again!"
                           break
                           ;;
                  *)
                           echo "Sorry, I don't understand"
                           ;;
           esac
         done
         echo 
         echo "That's all folks!"

###### 16. variables/parameters: example-1:

         #!/bin/sh

         #Pass the parameters as below.
         #./variables-1.sh venkat puneet vasu subbu

         echo "I was called with $# parameters"
         echo "My name is $0"
         echo "My first parameter is $1"
         echo "My second parameter is $2"
         echo "All parameters are $@"

###### 17. variables/parameters: example-2:

         #!/bin/sh
         
         old_IFS="$IFS"
         IFS=:
         echo "Please input some data separated by colons ..."
         read x y z
         IFS=$old_IFS
         echo "x is $x"
         echo "y is $y"
         echo "z is $z"
         
###### 18. variables/parameters: example-3:

         #!/bin/sh
         echo -en "What is your name [ `whoami` ] :"
         read myname
         if [ -z "$myname" ]; then
           myname=`whoami`
         fi
         echo "Your name is : $myname"
         
###### 19. variables/parameters: example-4: 

         #!/bin/sh
         SH_FILES=`find . -name "*.sh" -print`
         echo "$SH_FILES"
