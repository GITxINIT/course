# Git clone depth

- Clone `git@github.com:xmonad/xmonad.git` in a location of your choice. Take notice of the time it takes to clone the repository.
- Use `rm -rf` to delete the xmonad folder and clone `git@github.com:xmonad/xmonad.git` again, only this time use `git clone --depth=1 git@github.com:xmonad/xmonad.git`. The cloning should be much faster this time. Research why the second version was much faster than the first.
