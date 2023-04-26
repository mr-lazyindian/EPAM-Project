**Step 1**: Uploaded project dependencies to GitHub.
**Step 2**: In AWS, created an EC2 instance with ubuntu image and created a new key pair, allowed HTTP traffic.
**Step 3**: Connected to instance via EC2 instance connect.
**Step 4**: Installing Jenkins
         *Step 1*: Updating packages - *sudo apt update*
         *Step 2*: Installing Java - `sudo apt install openjdk-11-jre`  
         *Step 3*: Validating Java version by `java -version`.
         *Step 4*: Copying jenkins GPG keys.
         *Step 5*:  Updating packages `sudo apt update`.
         *Step 6*:  Installing Jenkins `sudo apt-get install jenkins`.
         *Step 7*: Starting jenkins sudo systemctl start jenkins
         *Step 8*: Validating Jenkins has started sudo systemctl status jenkins
         *Step 9*: Updating inbound rules to allow port 8080 from my Ip in security groups.
         *Step 10*: Opening Jenkins in localhost 8080.
        *Step 11*:  Unlocking Jenkins `/var/lib/jenkins/secrets/initialAdminPassword`.
        *Step 12*: Installing Plugins
        *Step 13*: Credentials and creating admin user.  (ubuntu, 1919)
**Step 5**: Creating a  free style project.
**Step 6**: Configuring free style project.
        *Step 1*:  Specify Git hub project url.
        *Step 2*: Specify GitHub repository link in Source Code Management.
        *Step 3*:  Generating Key pair in EC2 instance `ssh-keygen`.
        *Step 4*: `cd .ssh`.
        *Step 5*: `cat id_rsa.pub`. 
        *Step 6*: Copying public key and pasting it in github settings/ssh and gpg keys.
        *Step 7*: In source code management specify credentials.
                    credentials type: ssh
                    id: github-jenkins
                    username: ubuntu
                    private key: in EC2 `cd .ssh/ cat id_rsa`. copy private key and paste it then click on add button.
                    Now in credentials select ubuntu from list.
                    Specify the branch from where jenkins need to import code.
        *Step 8*: Save and Build now and view Console ouput if any error occurs.
        *Step 9*: Navigating to workspace created by jenkins in EC2, path specified in console output.
**Step 7**: Installing Node js `sudo apt install nodejs`.
**Step 8**: Installing NPM `sudo apt install npm`.
**Step 9**: Validating installation by checking versions `node -v npm -v`.
**Step 9**:  Installing packages specified in package.json using sudo npm install
**Step 10**: Starting web app using node filename.js and then edit inbound rules in ec2 security group and add port in inbound rules then open port with ec2 ip address.
**Step 11**: Installing Docker `sudo apt install docker.io`.
**Step 12**: Creating and writing Dockerfile.
**Step 13**: Building docker image `docker build -t movie-info .` .
**Step 14**: Building docker container `docker run -d --name movie-info-web -p 3000:3000`.
**Step 15**: Killed the container with `docker kill <container id>`.
**Step 16**: In Previously created jenkins free style job, configured and added a build step; execute shell and added docker commands for creating a image and running the image in docker container.
**Step 17**: Added plugin GitHub Integration in jenkins.
**Step 18**: In repository settings added a webhook with jenkins payload url and change the content type to application/json. `http://<ip address>:8080/github-webhook/` .``
**Step 19:** Changed EC2 inboud rule settings port 8080 to anywhere IPv4 for git to access jenkins.
**Step 20**: In Previously created jenkins free style job, configure and enable *GitHub hook trigger for GITScm polling* in build triggers.
****
         
                     