# `git log`

## Prep
- Clone the following repository:
```sh
https://github.com/GITxINIT/maze-game
```

Using `git log`, solve the problems below. The answer to each problem is the output of the command you have to execute.
If you want to test your answer to a problem, execute:

```sh
# from the inside the `maze-game` repository director
your-solution-to-problem1 | /path/to/git/log/problem/dir/test.sh 1
your-solution-to-problem2 | /path/to/git/log/problem/dir/test.sh 2
```

If you're confused about the output format, take a look at the files in `.answers` directory. All the needed information to solve those tasks can be found in the manual pages for `git log` and `gitrevisions` (`man git log` for unix and `git log --help` for windows), but feel free to use whatever resources you have at hand. A small hint: `--format` can be a very useful option for some of the problems below. You might also need to use some simple gnu utils, like `tail` for example.

## Problem 1
Print in compact mode (on a single line) all the commits that contain the word `fix` in their message, regardless of casing.

## Problem 2
Print the same commits as in **Problem 1** along with their diffs.

## Problem 3
Print (in compact mode) to the terminal the last 10 commits.

## Problem 4
Print (in compact mode) the first 10 commits.

## Problem 5
Print only the hashes of all commits, except the last 20, each on a separate line.

## Problem 6
Print only the merge commits.

## Problem 7
Print only the hash of all commits whose author is "Konstantin Simeonov".

## Problem 8
`csv` (comma-separated values) is a popular format. Print all non-merge commits in csv format, each on a separate line:

```
<short-sha1>, <author-name>, <committer-name>
```

## Problem 9
Print all commits, starting with the first commit in the repository, through the last commit in the repository, in `json` format:
```json
{ "id": "<short-hash>", "date": "<committer-date-RFC2822>", "committer": "<committer-name>" }
```

## Problem 10
Write a bash command that outputs the number of different authors in the whole repository to the standart output.

## Problem 11
Use `git log --graph --oneline` and try, based on the output, to determine how many branches were merged into the `master` branch. This problem does not have to be tested.
