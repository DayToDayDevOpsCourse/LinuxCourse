* Copy the files from one machine to another machine using SCP command.

* Create two RHEL machines on AWS with the names Server-1 & Server-2 with pem file names "server-1.pem" & "server-2.pem". (download both the pem files)

![image](https://user-images.githubusercontent.com/24622526/44766088-4bf25300-ab47-11e8-88f0-e45e9bf22680.png)

* Connect to Server-1.

![image](https://user-images.githubusercontent.com/24622526/44766612-cc19b800-ab49-11e8-827d-caa62966ffc3.png)


* Create a pem file in "Server-1" with the name "server-2.pem" to connect to the Server-2. Copy the pem file content that you downloaded to your loal machine. Now the pem file "server-2.pem" is in the path /home/ec2-user/server-2.pem in "Server-1".

![image](https://user-images.githubusercontent.com/24622526/44766727-61b54780-ab4a-11e8-87c7-c6bc7ec5747e.png)

* Give permissions on pem file.

chmod 400 /home/ec2-user/server-2.pem

* Create a sample.txt file in Server-1.

![image](https://user-images.githubusercontent.com/24622526/44766825-c07ac100-ab4a-11e8-82b6-4a9456b5f221.png)

* Copy the sample.txt file from Server-1 to Server-2 using SCP command.

Syntax: scp -i [pemfile] [local/file/path/] uname@hostname:server/path

scp -i "/home/ec2-user/server-2.pem" /home/ec2-user/sample.txt ec2-user@ec2-18-218-27-186.us-east-2.compute.amazonaws.com:/home/ec2-user/

![image](https://user-images.githubusercontent.com/24622526/44766896-118ab500-ab4b-11e8-9974-582d93389e55.png)

* Connect to Server-2: so far we havenot connected to Server-2.

![image](https://user-images.githubusercontent.com/24622526/44767148-2c115e00-ab4c-11e8-9132-8933888b0370.png)

* history of commands:

![image](https://user-images.githubusercontent.com/24622526/44766985-7d6d1d80-ab4b-11e8-8731-ecda015b83c4.png)

