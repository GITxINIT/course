# `git log`

### prep
```sh
git clone git@github.com:cuklev/maze-game.git
```

Now, using `git log`, accomplish the following tasks:
1. Print in compact mode (on a single line) all the commits that contain the word `fix` in their message, regardless of casing
  - Print the commits along with their diffs
1. Print (in compact mode) to the terminal the last 10 commits
1. Print (in compact mode) the first 10 commits
1. Print only the hashes of all commits, except the last 20, each on a separate line
1. Print only the merge commits (`man git log` is your friend :))
1. Print only the hash of all commits whose author is "Konstantin Simeonov"
1. Print all non-merge commits in the format "<short-sha1> <author-name> <committer-name>"
  - Hint: using the `--format` option might help

All the needed information to solve those tasks can be found in the manual pages for `git log` and `gitrevisions`, but feel free to use whatever resources you have at hand.
