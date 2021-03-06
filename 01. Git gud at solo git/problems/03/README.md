# Add, reset, commit, status

- You'll have to do some acrobatics with the git index for that problem, but we'll need to generate a little bit of a mess first...

```sh
./setup.sh
```

- You can add files to the index using `git add` and remove files from the index using `git reset`. Your task is to commit all the files, but in 3 different commits. Each commit should contain 3 added files. Commit 1 should contain files 1, 2 and 3, commit 2 should contain 4, 5, 6, and the last commit should contain files 7, 8 and 9. The commit messages have to be exactly:

1. `added files 1, 2, 3`
1. `files 4, 5, 6 added`
1. `7, 8, 9 are in`

### If you mess up the messages or the commit content, you can do one of the following:
- `git commit --amend` will let you edit your last commit, so you can edit your commit message.
- `git reset HEAD~n` will undo the last **n** commits on the current branch, but will keep the changes in the files, so you can start over :)
