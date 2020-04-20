#Initialize a git repository
$git init 

#List the files in local repository
$git ls-files

#List files in working directory
$ls

#Check the status of current working directory (tracked/untracked/staged files)
$git status

#Add the untracked/modified files to staging area
$git add [File_Name]

#Commit the changes to local repository
$git commit -m [Commit_message] 

$git config --global user.name [username]  -- To set the username property
$git config --global user.email [Email]    -- To set the email property 

#Single command to add and commit changes
$git commit -a -m [Commit message]

#Check the commit logs
$git log

#Commands for checking logs
$git log --oneline  (Brief Logs)
$git log [File_Name] (Logs of a file)
$git log --help  (For other options)

#To check the differences
$git diff [File_Name] (Shows the diff for unstaged changes in file)
$git diff --staged [File_Name] (Shows diff for staged changes in file)

#Removing the files
$git rm [File_Name] (Remove the file from local repository and working directory)
$git rm --cached [File_name] (Removing the file from local repository and staging area)

#To stop git version control the file
$.gitignore (Contains ignored files)

#To replace the working directory file with local repository
$git checkout [File_name] (Will discard any working directory change and replace the files with local repository)

#To remove the last commit from local repository commit history and its changes
$git reset --mixed HEAD~1 (Changes will be moved to working directory)
$git reset --soft HEAD~1  (Changes will be moved to staging area)
$git reset --hard HEAD~1  (Changes will be removed from working directory and local repository)

#Remove the last commit from local repository and remote repository
$git revert --no-commit [Commit_Id_to_be_reverted or HEAD~2]
$git revert --no-commit -m 1 [Commit_Id_to_be_reverted] (If the commit is a merge then Revert the given commit and give preference to remote branch head in which the given branch was merged)
$git revert --no-commit -m 2 [Commit_Id_to_be_reverted] (If the commit is a merge then Revert the given commit and give preference to the branch head that is merged into remote branch)

#Creating git branch and checkout 
$git checkout -b [New_Branch_Name] [Source_Branch_Name-optional]

#List all branches in local repository
$git branch

#Merge two branches
$git merge <source branch> <Destination branch>

#Add remote to local repository
$git remote add origin <path_to_repo>

#Push code changes
$git push origin <branch_name>

#Stashing changes
$git stash -p <file_name> (partial stash )
$git stash list (List the stashed changes)
$git stash pop <stash_id> (stash id is get from stash list command and stash id is deleted after applying the changes)
$git stash apply <stash_id> (changes will be added to current branch and stash id will not be deleted)
$git stash clear (remove all stashes)
$git stash drop <stash_id> (delete particular stash)

#Deleting branch from local repository
$git delete -b <branch_name>  
$git delete -D <branch_name>  (Forced Delete)

#Delete the branch from Remote repository
$git push origin --delete <branch_name>






