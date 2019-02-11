#### Which of the following statements about `git status` is false?
1. `git status` show information about what would be committed if `git commit` is run
1. `git status` can be used to obtain information about conflicts in files during a merge
1. `git status` can display information about previous commit entries
1. `git status` has an option that allows outputting information of files ignored by git

#### Below is given an output of `git status --ignored`  command. If a `git clean -f` is run, what will happen?
```
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   src/Lib.hs

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	.vscode/
	README.md

Ignored files:
  (use "git add -f <file>..." to include in what will be committed)

	.stack-work/
	cli.cabal

no changes added to commit (use "git add" and/or "git commit -a")

```

1. `src/Lib.hs`, `.vscode/`, `README.md`, `.stack-work/` and `cli.cabal` will be deleted, because `git clean` cleans all non-committed changes
1. `git clean -f` needs an extra option to handle directories and ignored files and does not operate on tracked files, so only `README.md` will be removed
1. All the untracked and ignored files and directories will be removed, `Lib.hs` will be kept, because `git clean` removes untracked content
1. Only `.vscode/` and `README.md` will be removed, because tracked content and ignored entries are not touched by `git clean`

#### Given the following output of `git status --ignored`, which of the commands below can be used to get rid of all untracked and ignored files, while keeping the staged changes?
```
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   src/Lib.hs

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	.vscode/
	README.md

Ignored files:
  (use "git add -f <file>..." to include in what will be committed)

	.stack-work/
	cli.cabal

```
1. `git clean -fn`
1. `git reset HEAD --hard`
1. `git clean -fdx`
1. `rm -rf .vscode/ README.md .stack-work/ cli.cabal`
1. `rm -rf ./* && git checkout .`

#### Choose the correct statements about `git clone --depth=10`:
1. Clones the repository, but fetches only the state of the last 10 commits
1. Can be significantly faster for repositories with a long commit history
1. Clones the repository, but fetches only the state of the first 10 commits
1. Clones only 10 levels of directory nesting depth in the repository and ignores the rest of the files/directories
1. TODO: `git fetch --unshallow` here

#### A repository with two branches (`master` and `dev`) is given. If you're currently on `master`, which command can be used to obtain only the version of the file `webpack.config.js` from the `dev` branch into the current working directory:
1. `git checkout dev -- webpack.config.js`
1. `git reset HEAD dev -- webpack.config.js`
1. `git reset dev -- webpack.config.js`
1. `git checkout dev`

#### Pick the commands that can be used to only stage some of the changes to `main.cpp` for commiting:
1. `git add main.cpp`
1. `git add`
1. `git add -p main.cpp`
1. `git add -i`

#### Which commands can be used to remove only some of the changes from the index, but keep them in the working directory?
1. `git reset -p`
1. `git checkout -p`
1. `git reset HEAD --soft`
1. `git reset HEAD -p`

#### You're on branch `dev/feature-1`, but your coworkers have been up to some cool stuff in their branch `dev/feature-42` and you would like to have some of the changes they made to `Parser.hs` file in your working directory, but without checking out another branch. Is this possible and if it is, how can you do it?
1. I'll use `git reset -p dev/feature-42 -- Parser.hs` to partially reset only `Parser.hs` to the state I would like
1. I can use a partial checkout with patch option `git checkout -p dev/feature-42 -- Parser.hs`
1. It's not possible, I'll checkout `dev/feature-42`, copy the file, checkout `dev/feature-1` and paste the file there

#### Choose the wrong statements about commits:
1. Merge commits have more than one parent
1. Commit contents cannot be edited
1. Commit messages can never be edited after the commit is made
1. The committer and the author are always the same person

#### Choose the correct statements about `git commit --amend`:
1. It can delete the commit from the history
1. It can be used to add content to the commit
1. It does not have an option which makes it keep the previous commit message, but amend only the content
1. It can bse used to edit the commit message

#### Choose all correct ways to create a branch named `the-long-awaited-refactoring`:
1. `git checkout the-long-awaited-refactoring`
1. `git checkout -b the-long-awaited-refactoring`
1. `git branch the-long-awaited-refactoring`
1. `git branch -D the-long-awaited-refactoring`

#### Choose all corrects statements about `git branch`:
1. `git branch` lists all local branches
1. `git branch -vv` outputs information about which remote branches are tracked by which local branches
1. `git branch -r` lists both local and remote branches
1. `git branch -a` lists both local and remote branches

#### Choose the correct statements regarding `git status`:
1. Can be give information about the name of the current branch.
1. Doesn't give information on untracked files.
1. Can be used to obtain a list of files with conflicts during a merge/rebase.
1. Changes the repository state.

#### Pick most truthful statement about commits in git:
1. Each commit is a stored patch (i.e. the difference between two states)
1. Each commit is standalone and contains a copy of the whole repository.
1. Each commit together with all commits before it forms a snapshot of the repository at that point in history.
