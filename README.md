Emacs basic setup

## Installation

1. Install emacs using homebrew
  ```
    brew install emacs
  ```

2. Go to your folder and clone this repository
  ```
    cd ~/.emacs.d/
    git clone git@github.com:xskander/emacs.git .
  ```

3. Start up emacs and let the packages run
  1. You can do a ```load-file init.el``` to make sure everything works
  1. Additionally you can close/start emacs

4. Install additional packages
  ```
    brew install the_silver_searcher ack ispell
  ```

## Keybindings

### Magit

* ```C-c g``` - magit
* ```C-x k``` - kill current buffer
* ```C-x d``` - Kill all buffers
* ```C-c m``` - Extract branch number
* ```C-c n``` - Output 'not yet done' in case you want to commit something temporary

### Navigation

* ```C-x b``` - Buffer
* ```C-x o``` - Switch window
* ```C-q``` - Grep search
* ```C-c h``` - Dummy Search
* ```C-c p f``` - Fuzzy Search
* ```C-c r [m/c/s/h/j]``` - Project search - m - model/c - controller...

### Word Manipulation

* ```C-x q``` - Select inside quotes
* ```C-x p``` - Select inside paranthesys
* ```C-c r``` - Expand region
* ```C-c C-x a``` - Mark all like this
* ```C-c C-k a``` - Mark all like this
* ```C-c C-x n``` - Mark all like this next line
* ```C-c C-x p``` - Mark all like this previous line
* ```C-_ - undo (C-z``` - disabled)
* ```C-m``` - enter
* ```C-h``` - backspace
* ```C-d``` - delete
* ```C-c M-w``` - copy whole line
* ```C-c C-w``` - cut whole line
* ```[Paste] M-y``` - toggle through paste buffer
* ```C-x (``` - start macro
* ```C-x )``` - end macro
* ```M-0 C-x e``` - do macro till end of file

### Rubocop - code checker
> Please make sure you have everything setup or this might cause all sorts of issue.
> Documentation - https://www.flycheck.org/en/latest/

* ```C-c ! m``` - disable flycheck - for example on large files
* ```C-c ! l``` - See flycheck output
