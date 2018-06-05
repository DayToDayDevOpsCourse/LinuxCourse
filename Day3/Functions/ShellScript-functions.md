# ShellScript-functions

##### 1. functions - example-1

          #!/bin/sh

          # defining the function

          fun1()
          {

          echo "My name is: $1"

          }

          #passing the parameters to the function "fun1"

          fun1 DevOps

##### 2. functions - example-2

          #!/bin/sh

          myfunc()
          {
            echo "I was called as : $@"
            x=2
          }

          ### Main script starts here 

          echo "Script was called with $@"
          x=1
          echo "x is $x"
          myfunc 1 2 3
          echo "x is $x"

##### 3. functions - example-3

          #!/bin/sh

          myfunc()
          {
            echo "\$1 is $1"
            echo "\$2 is $2"
            # cannot change $1 - we'd have to say:
            # 1="Goodbye Cruel"
            # which is not a valid syntax. However, we can
            # change $a:
            a="Goodbye"
          }

          ### Main script execution starts here

          a=Hello
          b=World

          myfunc $a $b

          echo "a is $a"
          echo "b is $b"
