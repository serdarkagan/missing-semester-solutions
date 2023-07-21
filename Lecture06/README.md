# Lecture6 - Version Control (Git)
1. -
2. - ```
      git log --all --graph --decorate
     ```
   - ```
      $ git log --all --graph --decorate -- README.md
      * commit 9ef9db72211fefc00caaa7133b35dda4a99acccf
	    | Author: Anish Athalye <me@anishathalye.com>
	    | Date:   Thu Oct 27 20:28:41 2022 -0400
	    |
	    |     Add Docker setup for easier development
	    |
     ```
3. ```
    git filter-repo --force --invert-paths --path path/to/file
   ```
4. First I made some changes in a file. After executing `git stash`, changed file is saved but not in the file itself. Original file goes back to the old version.
   If you made some changes but it is not finished yet, using the older version may be good. In such a case, we can use git-stash. After finishing the job, we can start using edited version.
5. Insert to .gitconfig:
   ```
   [alias]
     graph = log --all --graph --decorate --oneline
   ```
6. First run the command below. Then you can insert into `~/.gitignore_global`. (For example, for Windows "Thumbs.db" or for MacOS ".DS_Store").
   ```
    git config --global core.excludesfile ~/.gitignore_global
   ```
7. -
