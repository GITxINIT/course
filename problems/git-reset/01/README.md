# Partial reset

## Prep
Run `prep.sh` to initialize the problem.

## Plot

Hristofor is coding algorithms in javascript and today he's coding the knapsack problem. The propblem is that his solution has a little bug. He fixed it, but in the process of fixing, he also put a few `console.log` calls in his solution to debug what's going on. Then he did a `git add knapsack.js`, but when he did `git diff --staged` to see what he added to the index, he saw that the `console.log` calls are also in the index. He wants to remove all the parts with `console.log` from the index, but keep the bug fixes in the index. Use the `git reset -p` command to help him out!

In case something goes wrong and you want to start from a clean slate, you can use `git reset && git checkout knapsack` (or `git reset --hard` to reset the state of the whole repository).
