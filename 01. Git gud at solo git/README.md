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

### Whoa, this looks too complicated, I just want something like `git save`
Why are there two commands for saving? `git` actually has a different way of keeping track of repository states than you might expect. Let us have a repository with 4 recorded states (they are called commits): `s0`, `s1`, `s2`, `s3`. In such case, the git history looks like that:

```
s0 -> s1 -> s2 -> s3 -> git index
```

You can look at the `git index` as a part of the repository history that still hasn't become official.
  - You can add file changes to the git index with `git add` command or remove file changes from it with the `git reset` command.
If you have some changes in you git index (they're called `staged changes`) and you run `git commit` and provide a commit message, the repository history will become the following:

```
s0 -> s1 -> s2 -> s3 -> s4 -> git index
```

The contents of the git index will become a part of the previous states of the repository and the index will be empty again.
