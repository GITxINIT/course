ch of the following statements about `git status` is false?
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

#### Given the following output of `git status --ignored`, which of the commands below can be used to get rid of all untracked and ignored files.
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

