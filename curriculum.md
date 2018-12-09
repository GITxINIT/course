# prep materials:
- set up and configured git
- some reading, like an article on basic git usage
- curriculum
- further readings - books, articles, docs
- no test
- poll about technical competencies regarding git

# first meeting:

- intro:
  - why this course
  - why version control
  - why git/github/gitlab
  - curriculum and motivation for it
- fundamental usage:
  - installation/setup
  - github/gitlab profile
  - configuring git
  - basic use of git init/status/reset/add/commit/diff/log/checkout/push/pull/remote
    - explain how to use git status
    - add/remote stuff to/from index, .gitignore, look at the diffs
    - make a few commits, see them with git log
    - checkout a few different commits in the history
    - set a remote and push the commits there
    - explain a bit about distributed nature of git (what does distributed mean, why it's cool)
    - remote repository, push/pull/clone, ssh keys
    - show octotree/tig to the poor feckers

### exercises:
- git status
  - use status to determine what's going on
- git diff
  - diff the working directory and parts of it
  - diff the index and parts of it
- init/add/status/diff/commit/push/remote/log
  - create empty repo
  - create a few commits
  - push them to the remote via ssh and then via http

# second meeting:

- cool haxx:
  - pull --rebase
  - push -f
  - reset HEAD~x
  - stash pop/apply/list

- branches:
  - what are branches and motivation behind branches
  - creating branches
  - checking out branches
  - updating branches
  - protected branches
  - merging branches
    - what are diverged histories
    - how do they come together
    - git merge/aborting merges
    - merge -X ours/theirs
  - basic usage of reflog and reset
  - workflow:
    - branch workflow, merge requests, code reviews
    - forks
  - diffing branches
  - how to use in final projects

# third meeting:

- rebasing branches
  - interactive rebasing (rewording, editing, aborting a rebase)
  - rebase workflow
  - rebase --onto
- partial checkouts
- hooks
  - motivation behind hooks
  - examples
  - write a couple hooks (pre-commit and commit-msg probably)
  - server/client hooks
  - bypass client hooks
- advanced logging magic
  - grep in logs
  - format logs
- interactive add
- diff filters
- git show
- create and apply patches with diff
