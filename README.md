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
    brew install the_silver_searcher ack ispell prettier deno
  ```

5. Other things to consider.
 - For Deno to work - https://deno.com/
   ```
     export DENO_INSTALL="~/.deno"
     export PATH="$DENO_INSTALL/bin:$PATH"
   ```

6. Issues over the years
   - [issues](https://github.com/xskander/emacs/blob/develop/issues.txt)

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
* ```M-n``` - Scroll Page down without moving cursour
* ```M-p``` - Scroll Page up without moving cursour
* ```M-a``` - Go to begining of code block
* ```M-e``` - Go to end of code block

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

## lsp-mode - typescript helper
* ```M-,``` - lsp-ui-peek
* ```M. & M,``` - go to
