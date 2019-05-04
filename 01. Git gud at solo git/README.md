# Git gud at solo git `(aka what is this and how do I use it on my own)`

## Table of contents
- What are we doing here:
  - Why is this course important
  - Why is version control a thing
  - Why are we using git/github/gitlab
  - Brief explanation of the curriculum
- Dipping the toes: fundamental usage
  - How do I get git running on my machine?
  - Do I need a github or a gitlab profile?
  - How to configure your name and email for git
  - The command line
    - Reasons to use the command line
    - A few examples of command line usage
  - What is a git repository and how do I do stuff with it:
    - How do I make one
    - How can I get an existing one
    - How can I read information from it (files, history, it's current state, etc)
    - Okay, I got a repository somehow, how do I make changes in it?
- Why is it good that git is distributed? What does it even mean?
- Git tools that make life easier

## What are we doing here?
The what, why, how and when about this course.

### Why is this course important?
- Git is used at almost every modern software company, so:
  - Chances are you'll have to use it
  - Chances are you'll struggle with it if you're not prepared
  - Mastering it will make you a more appealing candidate
  - Mastering it will make your work easier and your employer happier
- Git is not beginner-friendly and can take a lot of time to master on your own
- No git course that I know of offers the blend of:
  - Beginner friendliness without dumbing things down
  - Being practically oriented, because practice is what counts the most
  - A complete continuous experience from a beginner to a confident user
  - Vast collection of practical problems improve your skills with
  - A broader perspective of software development practices
  - It's free, dammit
- Learning the ways of git will broaden your understanding of software development
- You can become an awesome git wizard

### Why is version control a thing?
At it's core, version control provides a version simple thing: **it provides easy access to different versions of the stored data and ways combine existing version or change and create new versions**. It may sound dead simple, but this availability of different versions allows:
- Access to all past versions of the data
- Working on different changes in parallel and in isolation
- Produce a new version base on existing versions - changes from 2 or more version can be combined to create a new version

### Why is version control a thing `(in the context of software development)`:
- Easier to discover which change caused a bug
- Allows much easier maintanance of multiple software versions
- Multiple developers working on the same project without tripping over each others feet all the time
- Any set of changes can be reverted
- All changes get documented
- Freely experiment in a new version that is not used by anyone else

### Why are we using git?
- On it's own:
  - It's super widely used
  - It's mature and it works
  - There's a lot of wisdom regarding how to do things on the internet
  - Theres a lot of tooling for it out there
  - It's super powerfull

- Compared to other version control systems:
  - Better performance than most others
  - Doesn't require an internet connection
  - Working with different versions is a lot easier
  - Doesn't impose a workflow on users
  - And many others

### Why github/gitlab?
- They provide public repository hosting and sharing for free
- Offer a simplified way to request your changes to become a part of a version of a project
- The offer a public profile, on which your contributions and projects are listed, which can be a great portfolio
- Git does not depend on git hosting services in any way. You can use a local git repository or pull from other remote repositories without having any kind of profile in a hosting service.

### Curriculum
TODO

## Dipping the toes: fundamental usage

### Getting `git` running
- Visit [this link](https://git-scm.com/downloads)
  - Follow the instructions for Linux (if you don't have git already)
  - Download and run installer if on Windows
  - Download and unpack the image file for MacOS
- To verify that the install worked, run `git --version` as a shell command
  - On Windows, it's a good idea to use `git bash` shell, at least in the context of this course
  - On Unix, use whatever shell you feel like

### Configuring credentials
When you introduce a new change in a repository (i.e. making a commit), the change is annotated with your name and email. If you run `git commit` without having your credentials set, you'll see output like that:

```
*** Please tell me who you are.

Run

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

to set your account's default identity.
Omit --global to set the identity only in this repository.

fatal: unable to auto-detect email address (got 'root@b048506c87d0.(none)')
```

You can run the commands suggested by `git` in the output above with your credentials in place of the example credentials.

## The command line and it's place in this course
- All demos during this course will use the command line
- Some of the practice problems will require use of the command line
- Some test questions will include command use and/or output
- Tip: forget that you can use anything else besides command line for working with git during this course


### But I don't even know what the command line actually is
- It's a user interface that uses text instead of graphics to communicate with the user
- You make it do stuff by typing commands in it
  - It interprets your commands and does stuff
  - Commands consist of two things - name of the command and arguments (optional)
  - It's a lot like calling functions and seeing the result printed on the screen, only after each function terminates, control is returned to the user
- There are different flavors of command line intefaces, like `bash`, `powershell`, `cmd`, `zsh`
  - Some of them are fundamentally different, like `bash` and `powershell`
  - This course will focus on `bash`, but `bash` compatible shells are okay

### Reasons to use the command line instead of `insert-name-of-gui-thing-im-using`
- Command line git
  - Is universal for all the environments git runs in
  - Is more performant/uses less system resources
  - Has better error messages
  - Has the power of whatever shell you're using (bash, zsh, powershell)
  - Helps develop understanding of git that can be applied to working with GUIs
- Git GUIs
  - do not offer full support for everything you can do with git
  - do weird stuff
  - sometimes have cryptic error messages or bad feedback
  - Knowing what buttons to press can't be applied as well to other git tools

### A few command line examples in `bash`
```bash
ls # list all files in the current dir
mkdir gosho # creates a directory called gosho
cd gosho # changes the current directory of the shell to gosho/
echo "hello" # print "hello" to the standard output
echo "hello" > file.txt # print "hello" to the output and redirect it to file.txt so it's written there
rm file.txt # delete file.txt from the file system
cd .. # go one directory up
rm -rf gosho # deletes a directory
```

### This sounds hard, how do I learn this
- It looks way harder than it is
- This course have you covered with:
  - A dozen easy tasks with solutions which will help you grasp the basics in no more than 30 minutes
  - A cheatsheet with useful little command line tricks that will help you go places
  - Many of the practical problems will feature setup/test scripts that you do not have to read, but you can always scrape some knowledge off them :)

## What is a `git` repository and how do I do stuff with it
- A `git` repository is just an ordinary directory that has a `.git` directory inside it. The `.git` directory is the place where `.git` stores the state of the repository.

### How do I make a new one?
- The following will create a new `git` repository in the `my-new-repo` directory:

```bash
mkdir my-new-repo
cd my-new-repo
git init
```

- If you list all files in `my-new-repo` using `ls -al`, you'll see the `.git` directory.

### Okay, I have one, how do I put something inside?
To introduce changes, you have to add some files and/or directories. A single file is enough for a start. The following commands are necessary to introduce a change:
- `git add` adds files to the git index
- `git commit` introduces an annotated change to the history that contains whatever has been added to the git index

### I just want something like `git save`
Why are there two commands for saving? `git` actually has a different way of keeping track of repository states than you might expect. Let us have a repository with 4 recorded states (they are called commits): `s0`, `s1`, `s2`, `s3`. In such case, the git history looks like that:

```
s0 -> s1 -> s2 -> s3 -> git index
```

You can look at the `git index` as a commit that is not finalized.
  - It contains things that will be committed when you run `git commit`
  - It IS NOT your working directory and can contain different files
  - You can add files to the git index with `git add <path>`
  - You can remove files from the git index with `git reset <path>`
If you have some changes in you git index (they're called `staged changes`) and you run `git commit` and provide a commit message, the repository history will become the following:

```
s0 -> s1 -> s2 -> s3 -> s4 -> git index
```

The contents of the git index will become a part of the previous states of the repository and the index will be empty again.

### What is a commit?
TODO

### Making changes (commits)

```bash
git add docs/loveletter.txt # add this file to the git index
git add poems/ # add everything in this directory to the git index
git reset poems/crappy-poem.txt # unstage the file from the git index
git reset # remove everything from the git index, but keep it in the working dir
git commit # commit everything that has been staged in the index
git commit -a # commit everything in your working directory (even unstaged files)
```

### Querying the current state of the repo
When working with `git`, the following information is important quite often:
  - What files have been changed
  - What's in the index and what isn't
  - What branch I'm on

This information can be obtained by simply executing the `git status` command. Since it shows the current state of the repo, this is a bread and butter command that is used in conjuction with the majority of the `git` commands out there.

### What exactly have been changed since the last commit
`git status` provides information about what files have changed and whether those changes are in the index, but what actually are those changes?
`git diff` can output information about the difference between different things in the repository:
  - `git diff` prints diff between the working directory and the `git index`
  - `git diff --staged` prints diff between the `git index` and the last commit
  - `git diff --stat` prints how many lines have been added/deleted from the changed files

### Querying the repository history (i.e. the chain of commits)
`git log` is the command that outputs information about previous commits, in it's simplest form it outputs commits from newest to oldest. It also has various useful options:
  - `git log --oneline` formats each commit summary on a single line
  - `git log --since=date` and `git log --before` allow to query for commits before or after a given date
  - `git log --author=name` will list all commits from the given author
  - `git log -n` list the most recent `n` commits

### I can see the history, but how can I travel back in time?
`git checkout <commitid>` will change the contents of your working directory to the contents in the given commit id. The commit ids can be taken from the output of the `git log` command. A other few convenvient uses of `git checkout`:
  - `git checkout .` will reset your working directory to the state of the last commit
  - `git checkout HEAD~n` will reset your working directory to the state before `n` commits
  - `git checkout master` will bring you back to your main branch after travelling back in time

## Working with remote repos
Up to now, we only worked with a local repository, which leaves a few questions open:
  - How do I clone a remote repository?
  - How do I pull changes from a remote repository?
  - How do I push my changes to a remote repository?
  - I hear mumbo-jumbo about `git` being decentralized, what does that mean?

### Cloning a remote repo
TODO: revise
Repos can be cloned via the `git clone <url>` command, where the url could be one of:
- You will mostly use the following two:
  - http[s]://host.xz[:port]/path/to/repo.git/ - `https://github.com/KonstantinSimeonov/horsebin.git`
  - [user@]host.xz:path/to/repo.git/ - `git@github.com:KonstantinSimeonov/horsebin.git`
- Also possible:
  - ssh://[user@]host.xz[:port]/path/to/repo.git/
  - git://host.xz[:port]/path/to/repo.git/
  - ftp[s]://host.xz[:port]/path/to/repo.git/
  - /home/user/Projects/some-repo.git
  - C:\Documents\Projects\some-repo.git
