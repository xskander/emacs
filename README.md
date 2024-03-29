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
    brew install the_silver_searcher ack ispell prettier
  ```

## Keybindings

### Magit
* ```C-c g``` - magit
* ```C-c m``` - Extract branch number
* ```C-c n``` - Output 'not yet done' in case you want to commit something temporary

### Buffers
* ```C-x k``` - kill current buffer
* ```C-x d``` - Kill all buffers
* ```C-x b``` - Navigat through Buffers

### Navigation
* ```C-x o``` - Switch window
* ```C-q``` - Grep search
* ```C-c h``` - Dummy Search
* ```C-c p f``` - Fuzzy Search
* ```C-c a``` - Avy GoTo Char
* ```C-c g``` - Avy GoTo Line


### Projectile Keybinding
* ```C-c r m``` - Search Rails Modals
* ```C-c r v``` - Search Rails Views
* ```C-c r l``` - Search Rails Lib
* ... look through projectile keybindings

### Word Manipulation
* ```C-x q``` - Select inside quotes
* ```C-x p``` - Select inside paranthesys
* ```C-c r``` - Expand region
* ```C-c C-k a``` - Mark all like this
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
