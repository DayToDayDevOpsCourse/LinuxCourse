# Day1-Practice


#### find Command:

    "find" command used to search for files or directories with matching pattern. 

      Basic syntax:- find dirPath -name "pattern"

      Ex:- find . -name "web" 

    Search in current directory and print the list/result if any file or directory NAME contains the word "web".

    If you want the search result with only files, include the syntax "-type f".

    If you want search result with only directories include the syntax "-type d".

    1. Find all the files, the file content which contains the word and print the result with line numbers. (find + grep + xargs).

      Ex-1.1. find all the maven war projects. 

      find . -name "pom.xml" | xargs grep -n "<packaging>war" 

      Ex-1.2. Find all ear projects.

      find . -name "pom.xml" | xargs grep -n "<packaging>ear"

    2. Find if any folder name contains the word "aggregate" in multiple directories. 

      find path1 path2 -name '*aggregate*'

    3. Search for text files in home directory. 

      Ex: find / -name *.txt -type f 

    4. Search for only directory. 

      find path -type d -name '*-war' 

      find path -type d -iname '*-war' 

      i - ignore case.

    5. Search for multiple type of files 

      Ex: find . -type f \( -name "build.xml" -o -name "web.xml" -o -name "*.html" \( 

    6. find all the files other than text files. 

      Ex: find . -type f -not -name "*.txt"

    7. Find files by text in the files (same as first scenario).

      Ex-1: find . -type f -name "*.java" -exec grep -l StringBuffer {} \; 

      Ex-2: find . -type f -name "*.java" -exec grep -il stringbuffer {} \; 

      Ex-3: find . -type f -name "*.gz" -exec zgrep 'GET /folderName' {} \; 

    8. 5 lines before and 10 lines after grep search. 

      Ex-1: find . -type f -name "*.java" -exec grep -B5 -A10 "null" {} \; 

    9. Find files and take an action on them.

      find dirPath -name "*.sh" -type f -exec chmod 755 {} \;
      find . -name "aggregate" -exec ls -ld {} \;

    10. Copy all XML files from current directory and current sun-driectories to another directory.
        (If any of the file name is same, in the result you will find only the first found file).

      find . -name "*.xml" -exec cp {} dir/path/ \;

    11. Find and delete.

      find . -type f -name "*.xml" -exec rm {} \;
      find . -type d -name "maventarget" -exec rm -rf {} \;

    12. Find files/folders by modification time.

      find . -mtime 1 # modified files/folders in 24 hrs
      find . -mtime -7 # modified files/folders in last 7 days
      find . -mtime -7 -type f # only modified files in last 7 days
      find . -mnewer fineName # it returns a list of newly created files.

    13. find and tar package all java script files.

      find . -type f -name "*.js" | xargs tar cvf alljsfiles.tar

      For huge package: find . -type f -name "*.js" | xargs tar rvf alljsfiles.tar

    14. FIND: other examples

      1)Find Files Using Name in Current Directory.
        Ex: find . -name tecmint.txt ./tecmint.txt
      2) Find Files Using Name and Ignoring Case.
        Ex: find /home -iname tecmint.txt ./tecmint.txt ./Tecmint.txt
      3)Find Directories Using Name. 
        Ex: find / -type d -name Tecmint /Tecmint
      4)Find and remove single File.
        Ex: find . -type f -name "tecmint.txt" -exec rm -f {} \;
      5)Find and remove all text File.
        Ex:find . -type f -name "*.txt" -exec rm -f {} \;
      6)Find all Empty Files.
        Ex: find /tmp -type f -empty
      7)Find all hidden files.
        Ex:find /tmp -type f -name ".*"
      8)Find Last 50 Days Modified Files.
        Ex:find / -mtime 50
      9)Find Last 50 Days Accessed Files.
        Ex:find / -atime 50
      10)Find Last 50-100 Days Modified Files.
        Ex:find / -mtime +50 –mtime -100
      11)Find Specific size files and Delete.
        Ex:find / -type f -name *.mp3 -size +10M -exec rm {} \;


#### grep command:

    Grep: abbruvation - general regular expression parser. 

    1)Search for the given string in a single file. 
    Ex-1:grep "string" filename
    Ex-2:grep -n "string" fileName
    ( -n prints the line number. )

    2)Checking for the given string in all the text files. 
    Ex: grep "string" "*.txt" 

    3) Case insensitive search using grep -i 
    Ex:grep -i "string" fileName 

    4) regular expression 
    Ex:grep "lines.*empty" demo_file

    From documentation of grep: A regular expression may be followed by one of several repetition operators: 
    ? -->The preceding item is optional and matched at most once. 
    *  -->The preceding item will be matched zero or more times. 
    + -->The preceding item will be matched one or more times. 
    {n} -->The preceding item is matched exactly n times. 
    {n,} -->The preceding item is matched n or more times. 
    {,m} -->The preceding item is matched at most m times. 
    {n,m} -->The preceding item is matched at least n times, but not more than m times. 

    5)Checking for full words, not for sub-strings using grep -w The following example is the WORD grep where it is searching only for the word "is". Please note that this output does not contain the line "This Line Has All Its First Character Of The Word With Upper Case", even though "is" is there in the "This", as the following is looking only for the word "is" and not for "this". Ex:grep -iw "is" demo_file THIS LINE IS THE 1ST UPPER CASE LINE IN THIS FILE. this line is the 1st lower case line in this file. 
    Two lines above this line is empty. And this is the last line. 

    6)Display 'n' number of lines after match. The following example prints the matched line, along with the 3 lines after it. 
    grep -A3 -i "example" demo_text 

    7) Display 'n' number of lines before match.
    -B is the option which prints the specified 'n' lines before the match. 
    Syntax: grep -Bn "string" FILENAME 

    8)Searching in all files recursively using grep -r.
    Ex: grep -r "ramesh" * 

    9. Search for a word in all the files grep "word" * Search for word in all XML files. 
    Ex: grep "word" *. xml 

    10. Line should starts with a word.
    Ex:grep -ni "^word" *.txt 

    11. grep "[FD]ire" * --- search for Fire or Dire in all the files.

    grep "^[FD]ire" * --- line starts with Fire or Dire in all the files.

    Find all the lines which contains 3 numbers.
    Ex:grep '[0-9][0-9][0-9]' *.xml

    Display only the files for above case. Dont display the lines/content of the file. grep -l '[0-9][0-9][0-9]' *.xml 

    12. Lines before and after grep match.
    Ex: grep -B5 "war" build.xml 

    grep -A5 "war" build.xml

    grep -B5 -A10 "war" build.xml 

    13. Find any line which do not contain the word. 

    Ex: grep -v "word" pom.xml 

    14. List all the directories in the currect directory.

    Ex: ls -al | grep "^d".

    ls -al gives the result of all hidden and others files/directories. grep "^d" will give the result of the lines starts with "d". 

    15. Search for multiple words in a file. (egrep).

    Ex: egrep "parent|child" family.txt Or grep -li "child" $(find . -name "*.txt" -exec grep -li "parent" {} \;) 

    16. List all the files containing the word "parent".

    Ex: find . -type f -exec grep -li "parent" {} \; 

    17. Recursive grep.

    Ex-1: grep -rl "parent" . 
    Ex-2: grep -ril "parent" /path1 /path2
    (search in multiple directories)
    Ex-3: egrep -ril "parent|child" /path1 /path2
    (search in multiple directories)

    -->Search for a string "linux" in a file using  grep command in unix
    grep "linux" index.html

    -->Insensitive case search with grep -i
    grep -i "linux" index.html

    -->Searching for a string in multiple files.
    grep "linux" file*.*

    -->Specifying the search string as a regular expression pattern
    grep "fast.*host" index.html

    -->Displaying the line numbers.
    grep -n "word*" file.txt

    -->Counting the lines when words match
    grep -c 'test' /home/example/test.txt

#### cat command:

    'cat' is for display the files content and concatenate the more than two files

    1. Display the file content.

      cat filename

    2. Displays both the files content. View Contents of Multiple Files in terminal.

      cat file1 file2

    3. file1 content will be overwritten to file2 content.

      cat file1 file2 > file2

    4. file1, file2 content will be concatinated and write to the new file file3.

      cat file1 file2 > file3

    5. Use Cat Command with More & Less Options

      cat song.txt | more
      cat song.txt | less

    6. prints file content with line number

      cat -n file (or) cat -b file

    7. shows tabs character

      cat -T file

    8. shows non-printing characters

      cat -v file

      We can use both -Tv or -t for above two outputs

    9. Create a File with Cat Command. Once you run the below command, it awaits input from user, type desired text and press CTRL+D (hold down Ctrl Key and type ‘d‘) to exit. The text will be written in 'fileName.txt' file.
    You can see content of file with the command --> cat fileName.txt

      cat > fileName.txt

    10. Display Multiple Files at Once

      cat test; cat test1; cat test2

    11. Contents of test1 file will be appended at the end of test2 file.

      cat test1 >> test2

    12. it use file name test2 as a input for a command and output will be shown in a terminal.

      cat < test2

    13. Sorting Contents of Multiple Files in a Single File. This will create a file test4 and output of cat command is piped to sort and result will be redirected in a newly created file.

      cat test test1 test2 test3 | sort > test4


#### ls command:

    1. ls ---> list of files, directories in current directory.

    2. ls -l OR ll --> "-l" long list with dir/file permissions, owner, etc.

    3. ls -al ---> "-a" - show all including hidden files, "-l" long list with dir/file permissions, owner, etc.

    4. ls ..  ---> results all the files, dirs in parent directory.

    5. ls path ---> list of files, directories in specified directory.

    6. ls -l --block-size=[size] ---> where size=K,M,G,T,P,E,Z,Y

    7. ls -d  */ ---> display the sub directories excluding all other files

    8. ls --version ---> it displays the version of ls Command.

    9. ls -g ---> dont display the owner info in the list

    10. ls -lG ---> dont display the group info in the list

    11. ls --color=never ---> no color to displayed list

    12. ls --color=auto ---> blue to dir, white to files by default/auto colors

    13. ls ~ ---> list in home directory.

    14. ls ../ ---> list of parent directory.

    15. ls -lt ---> display the recently modified files/dirs on top of the list.

    16. ls -lX : it will display the list of same extension files together.

    17. ls -r ---> List Files in Reverse Order

    18. ls -R ---> Recursively list Sub-Directories

    19. ls -ltr ---> Reverse Output Order

    20. ls -lS --->Sort Files by File Size

#### touch filename.txt --> just to create an empty file.


#### vi fileName : open the file if exists. If the file does not exists, then file will be created.

    i - press the key i to come into insert/edit mode.
    esc - press escape button to come out from edit more.
    Shift + ZZ or :wq : to save the file and exit.
    :q! - to exit without save the file.

    Vi editor linux commands:

    :q		quiet or exit from vi
    :q!		quit vi even though latest changes have not been saved for this vi 
    :wq		quit vi, writing out modified file to file named in original invocation
    0(zero)	move cursor to start of current line (the one with the cursor
    $		move cursor to end of current line
    1G		move cursor to first line in file
    nG		move cursor to line n
    G		move cursor to last line in file
    i		insert text before cursor, until <Esc> hit
    x		delete single character under cursor
    dd		delete entire current line
    /string	search forward for occurrence of string in text
    ?string	search backward for occurrence of string in text
    n		move to next occurrence of search string

#### cal : command to display the calendar.

#### passwd : to change the pwd of unix/linux user.

#### whoami : display the currect username. users, who, w are to find the users who logged at the same time.

#### logout, shutdown, poweroff, reboot

    *, ? are meta characters. * is to match 0 or more characters. ? is to matches with a single character.

