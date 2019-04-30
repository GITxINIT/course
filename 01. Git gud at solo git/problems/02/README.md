# Quick simulation

## Part 1:

- Create a new directory called `hello-git` using `mkdir` and make it a git repository using `git init`
- Write a program that prints `"hello, git"` to the standart output. The new file will not yet be tracked by git, so  add the file to the index using `git add`, so those changes are ready to be made into a commit.
- Use `git status` to see if the file has been added successfully to the index.
- Create a commit that contains the new program using `git commit`. Descriptive messages are nice, give the commit a message like "Implemented a hello git program".
- Use git status to check the status of the repository.
- Use `git log` to look at the commit history. So far you should have a single commmit.
- Modify the program to also print the numbers from 42 to 64.
- Use the `git diff` command to inspect the changes between the last commit and the current working directory.
- Add the changes in your file to the index with `git add` and commit them.
- Use `git log` to view the commit history again - there should be two commits now.

## Part 2:
- Create a repository in either [https://github.com]() or [https://gitlab.com]() (you need a user account).
- Copy the remote repository link and use `git remote` to add a remote called `origin` that points to the newly created remote repository.
- You can push the commits with `git push --set-upstream origin master`. From now on, you'll be able to push via just `git push`. The `--set-upstream origin master` part tells git that it should use the remote `master` branch of the `origin` url to pull from and push to.
- Congrats! You just create a remote repo using mostly the command line :)
