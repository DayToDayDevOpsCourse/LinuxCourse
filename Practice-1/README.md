
# Practice-1: Course

  1. Linux Archetecture (Understand files/folder structure of Linux operating system)

  2. Linux basic commands:

          2.1. mkdir
          2.2. cd
          2.3. cp
          2.4. mv
          2.5. rm
          2.7. who
          2.7. uname
          2.8. find
          2.9. grep
          2.10. wc
          
   3. Create/read/update/delete file:
    
          3.1. touch
          3.2. cat
          3.3. more
          3.4. less
          3.5. rm -rf
          3.6. head
          3.7. tail
          3.8. vi/vim/nano
          3.9. sed
         
   4. Disk usage and free memory
   
          4.1. free
          4.2. du
          4.3. df
     
   5. Install GIt

          Before install: find / -name "git"

          yum update
          yum install git
          git --version
          
          After install:
          find / -name "git"

          which git
         
   7. Install java

          Before install: find / -name "java"
   
          yum install java
          yum install java-1.8.0-openjdk-devel
          
          After install: find / -name "java"

          which java
    
   9. Install jenkins
   
          Before install: find / -name "jenkins"
          
          sudo wget -O /etc/yum.repos.d/jenkins.repo \
              https://pkg.jenkins.io/redhat-stable/jenkins.repo
          sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
          sudo yum upgrade
          sudo yum install jenkins java-1.8.0-openjdk-devel -y
          sudo systemctl daemon-reload

          systemctl start jenkins
          systemctl stop jenkins
          systemctl status jenkins
          
          After install: find / -name "jenkins"


     
       
     
     
        

 
     
