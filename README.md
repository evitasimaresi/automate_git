# automate_git
script to automatically update repos

#### .Version 3
#### Instructions
* go to the directory location of script
* Execute: `your_script.sh /path/to/your/repo &`
    * The `&` in the end will execute the script in the background
    * give path of the repo to automatically update
* Keep the PID number given right after
    * 5-digit number
* From now on the repo will be updated automatically every 3mins when there are saved changes
    * When there are no new changes the following message is beeing printed:\
    <span style="color:#5C6C54">"No changes to commit"</span> 
* To terminate the script execute:  `ps PID`




___


#### Commands
* `touch script.sh`			initiate the file 
* `nano script.sh`				modify the file
* `chmod +x your_script.sh` give   	give access permision to run the code
* `ps PID`					kill background task

