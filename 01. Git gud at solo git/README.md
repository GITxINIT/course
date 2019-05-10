# Git gud at solo git

What is `git` and how do I use it on my own

---

## Table of contents (1)
- What are we doing here:
  - Why is this course important
  - Why is version control a thing
  - Why are we using git/github/gitlab
  - Brief explanation of the curriculum
- Some prerequisites
  - How do I get git running on my machine?
  - Do I need a github or a gitlab profile?
  - How to configure your name and email for git

----

## Table of contents (2)
- The command line
  - Reasons to use it
  - A few examples
  - A few words on GUI clients

----

## Table of contents (3)
- What is a git repository and how do I do stuff with it:
  - How do I make one
  - How can I get an existing one
  - How can I read information from it (files, history, it's current state, etc)
  - Okay, I got a repository somehow, how do I make changes in it?
- Why is it good that git is distributed? What does it even mean?
- Git tools that make life easier

---

## What are we doing here?
The what, why, how and when about this course.

----

### Mastering git is important
- `git` is used at most modern software companies, so:
  - Chances are you'll have to use it
  - Chances are you'll struggle with it if you're not prepared
  - It's a valued skill in candidates
  - Mastering `git` will make you more efficient at work

----

### This course offers:
- Beginner friendly without dumbing things down
- A vast collection of practical problems
- A complete continuous experience from a beginner to a confident user
- Insight into many practices in the world of software development
- An opportunity to become an awesome git wizard

----

### Why is version control a thing?
Version control provides easy access to:
- Different versions of the stored data
- Ways of changing and/or combining existing versions into new version

----

### Why is version control a thing?
- Provides a backup to all versions out of the box
- Timetravel to discover which change caused a bug
- Facilitates maintaintanance of multiple software versions
- Can help developers work in parallel on the same project
- Any set of changes can be reverted
- All changes get documented
- Experiments can be done in an isolated environment

----

### Why are we using git? (1)
- It's super widely used
- It's mature and it works
- It's super powerful
- Has a lot of information about it on the internet
- Has a lot of tooling
- It's free software

----

### Why are we using git? (2)
- Has better performance than most other vcs
- Doesn't require an internet connection
- Easy brancing
- Easy reverting
- Doesn't impose a workflow on users
- And many others

----

### Github/Gitlab
- You do not necessarily need github/gitlab to use git
- They provide public repository hosting for free
- Give users a simple way to propose changes to projects (pull requests)
- Keeps track of your projects and contributions, which can be a great portfolio
- Offer other useful features for software development

---

### Curriculum
TODO

---

## Setting git up
How-to for Windows, Linux and Mac

----

### Getting `git` running
- Visit [this link](https://git-scm.com/downloads)
  - Follow the instructions for Linux (if you don't have git already)
  - Download and run installer if on Windows
  - Download and unpack the image file for MacOS (or install via `brew`)
- Run `git --version` as a shell command to verify the installation
  - Windows - use `git bash` shell during this course
  - Unix - all `bash` compatible shells are okay

----

### Configuring your credentials (1)
- `git` tags commits with name and email of the author
- trying to commit from the shell without set credentials:

```
$ git commit -m "This is a change"
*** Please tell me who you are.

Run

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

to set your account's default identity.
Omit --global to set the identity only in this repository.

fatal: unable to auto-detect email address (got 'root@b048506c87d0.(none)')
```

----

### Configuring your credentials (2)
The following commands will set you credentials:

```bash
# using the command line, execute:
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

---

## The command line
Why do I have to use the scary black thing?

----

### The command line in this course
- All demos in this course will use the command line
- Practice problems require use of the command line
- Test questions include command use and/or output
- Tip: forget that you can use anything else besides command line for working with git during this course

----

### I don't even know what the command line is
- It's a user interface that uses text instead
- It interprets your commands and does stuff
- Commands consist of two things - name of the command and arguments (optional)
- Similar to calling functions and having the output print on the screen

---

### GUI vs command line for git
Why are we going to use the command line?

----

### Pros of command line git
- Is universal for all the environments git runs in
- Is more performant/uses less system resources
- Has better error messages
- Has the power of your shell (bash, zsh, powershell)
- Helps develop understanding of git that can be applied to working with GUIs

----

### Cons of GUIs
- do not offer full support for all git features
- do weird stuff
- sometimes have cryptic error messages or bad feedback
- knowing what buttons to press can't be applied as well to other git tools

----

### A few command line examples in `bash`
```bash
ls           # list all files in the current dir
mkdir gosho  # creates a directory called gosho
cd gosho     # changes the current directory of the shell to gosho/
echo "hello" # print hello
echo "hello" > file.txt # write hello into file.txt
rm file.txt  # delete file.txt
cd ..        # go one directory up
rm -rf gosho # deletes gosho
```

----

### This sounds hard, how do I learn this
- It looks way harder than it is
- This course have you covered with:
  - A dozen easy tasks with solutions which will help you grasp the basics in no more than 30 minutes
  - A cheatsheet with useful little command line tricks that will help you go places
  - Many of the practical problems will feature setup/test scripts that you do not have to read, but you can always scrape some knowledge off them :)

---

## What is a `git` repository and how do I do stuff with it
- A `git` repository is just an ordinary directory that has a `.git` directory inside it. The `.git` directory is the place where `.git` stores the state of the repository.

----

### How do I make a new one?
- The following will create a new `git` repository in the `my-new-repo` directory:

```bash
mkdir my-new-repo
cd my-new-repo
git init
```

- If you list all files in `my-new-repo` using `ls -al`, you'll see the `.git` directory.

----

### Okay, I have one, how do I put something inside?
To introduce changes, you have to add some files and/or directories. A single file is enough for a start. The following commands are necessary to introduce a change:
- `git add` adds files to the git index
- `git commit` introduces an annotated change to the history that contains whatever has been added to the git index

----

### I just want something like `git save`
Why are there two commands for saving? `git` actually has a different way of keeping track of repository states than you might expect. Let us have a repository with 4 recorded states (they are called commits): `s0`, `s1`, `s2`, `s3`. In such case, the git history looks like that:

```
s0 -> s1 -> s2 -> s3 -> git index
```

----

### Brief explanation
- Look at the `git index` as an unfinished commit
  - It contains things that will be committed when you run `git commit`
  - It IS NOT your working directory and can contain different files
  - You can add files to the git index with `git add <path>`
  - You can remove files from the git index with `git reset <path>`

----

If you have some changes in you git index (they're called `staged changes`) and you run `git commit` and provide a commit message, the repository history will become the following:

```
s0 -> s1 -> s2 -> s3 -> s4 -> git index
```

The contents of the git index will become a part of the previous states of the repository and the index will be empty again.

---

## What is a commit?
TODO

---

### Making changes (commits)

```bash
git add docs/loveletter.txt # add this file to the git index
git add poems/ # add everything in this directory to the git index
git reset poems/crappy-poem.txt # unstage the file from the git index
git reset # remove everything from the git index, but keep it in the working dir
git commit # commit everything that has been staged in the index
git commit -a # commit everything in your working directory (even unstaged files)
```

----

### Querying the current state of the repo
When working with `git`, the following information is important quite often:
  - What files have been changed
  - What's in the index and what isn't
  - What branch I'm on

This information can be obtained by simply executing the `git status` command. Since it shows the current state of the repo, this is a bread and butter command that is used in conjuction with the majority of the `git` commands out there.

----

### What exactly have been changed since the last commit
`git status` provides information about what files have changed and whether those changes are in the index, but what actually are those changes?
`git diff` can output information about the difference between different things in the repository:
  - `git diff` prints diff between the working directory and the `git index`
  - `git diff --staged` prints diff between the `git index` and the last commit
  - `git diff --stat` prints how many lines have been added/deleted from the changed files

----

### Querying the repository history (i.e. the chain of commits)
`git log` is the command that outputs information about previous commits, in it's simplest form it outputs commits from newest to oldest. It also has various useful options:
  - `git log --oneline` formats each commit summary on a single line
  - `git log --since=date` and `git log --before` allow to query for commits before or after a given date
  - `git log --author=name` will list all commits from the given author
  - `git log -n` list the most recent `n` commits

----

### I can see the history, but how can I travel back in time?
`git checkout <commitid>` will change the contents of your working directory to the contents in the given commit id. The commit ids can be taken from the output of the `git log` command. A other few convenvient uses of `git checkout`:
  - `git checkout .` will reset your working directory to the state of the last commit
  - `git checkout HEAD~n` will reset your working directory to the state before `n` commits
  - `git checkout master` will bring you back to your main branch after travelling back in time

----

## Working with remote repos
Up to now, we only worked with a local repository, which leaves a few questions open:
  - How do I clone a remote repository?
  - How do I pull changes from a remote repository?
  - How do I push my changes to a remote repository?
  - I hear mumbo-jumbo about `git` being decentralized, what does that mean?

----

### Cloning a remote repo
Repos can be cloned via the `git clone <url>` command:
- Mostly used:
  - `http[s]://host.xz[:port]/path/to/repo.git` - `https://github.com/KonstantinSimeonov/horsebin.git`
  - `[user@]host.xz:path/to/repo.git` - `git@github.com:KonstantinSimeonov/horsebin.git`
- Also possible:
  - `ssh://[user@]host.xz[:port]/path/to/repo.git`
  - `git://host.xz[:port]/path/to/repo.git`
  - `ftp[s]://host.xz[:port]/path/to/repo.git`
  - `/home/user/Projects/some-repo.git`
  - `C:\Documents\Projects\some-repo.git`

----

### Cloning a repo: example
```bash
# clone the repository for this course into the "course/" dir

# over https
git clone https://github.com/GITxINIT/course.git

# over ssh
got clone git@github.com:GITxINIT/course.git
```
