slidenumbers: true

# [fit] :heart: WebStorm

---

![](http://nicknisi.com/images/beef_nick.png)

## [@nicknisi](https://twitter.com/nicknisi)

---

![fit](http://d.pr/i/1chYk+)

---

# [fit] :heart: ~~WebStorm~~ Vim

---

![fit](http://d.pr/i/1g1Zw+)

----

# [fit] :heart: ~~WebStorm~~ ~~Vim~~ Minecraft

---

# [fit] But I NEED an IDE

![](http://www.hollywoodreporter.com/sites/default/files/imagecache/thumbnail_570x321/2012/04/dawson_crying.jpg)

---

# [fit] No you don't

---

## [fit] Why vim?

![fit left](http://wolfrosch.com/_img/works/goodies/icon/vim@2x)

* highly customizable
* runs everywhere
* works with any programming languages
* scriptable

---

![inline](http://d.pr/i/1co02+)

---

## start the timer

---

# [fit] Install vim

![175%](http://gobazzar.com/media/catalog/product/cache/1/image/1200x1200/649f3efccd88c8d101f4ff5dd687d30b/v/i/vim_bar_big_300_gms.jpg)

---

# [fit] \(it's probably already there\)

---

# [fit] `brew install macvim --override-system-vim`

---

# [fit] Features

---

# [fit] Modal editing
![](http://d.pr/i/15nA1+)

---

# [fit] Modal editing

## [fit] Change the meaning of the keys in each mode of operation

* Normal mode - navigate the structure of the file
* Insert mode - editing the file
* Visual mode - highlight portions of the file to manipulate at once
* Ex mode - command mode

---

# [fit] Normal mode

---

# [fit] DON'T USE ARROW KEYS

---

# [fit] DON'T USE THE MOUSE

---

# You're a programmer. Strive to be lazy.
![](http://inliner.cluster02eu.s.memonic.ch/74/749840b2-4c51-4bfd-a49c-bd6bb5841a04/lazy-relaxed.jpg)

---

# [fit] h j k l
## [fit] left up down right

---

* `^E` - scroll the window down
* `^Y` - scroll the window up
* `^F` - scroll down one page
* `^B` - scroll up one page
* `H` - move cursor to the top of the window
* `M` - move cursor to the middle of the window
* `L` - move cursor to the bottom of the window
* `gg` - go to top of file
* `G` - go to bottom of file

---

# [fit] Elite!
![](http://media.giphy.com/media/lzfWemZZMfb2M/giphy.gif)

---

# The secret sauce

---

# The secret sauce

* text objects and motions
* the DOT command
* macros

![](http://omilia.com/wp-content/uploads/our-secret-sauce.png)

---

# [fit] Text objects and motions

---

# [fit] Think of a file as more than individual characters

---

# [fit] text objects

* `w` - words
* `s` - sentences
* `p` - paragraphs
* `t` - tags[^1]

![left](http://media.giphy.com/media/XXUAaLZrjTTu8/giphy.gif)

[^1]: tags available in XML/HTML files

---

# [fit] Motions

* `a`- all
* `i` - in
* `t` - 'til
* `f` - find forward
* `F` - find backward

![right](http://media.giphy.com/media/xoFmUPuB1PnUY/giphy.gif)

---

# [fit] Combine with comands
![](http://wealthwrapup.razrtek.netdna-cdn.com/wp-content/uploads/2014/08/sonny_cher_msn.jpg)

---

# [fit] Commands

* `d` - delete (also cut)
* `c` - change (delete, then place in insert mode)
* `y` - yank (copy)
* `v` - visually select

![right fit](http://media.giphy.com/media/RL6C0dWNh7aFO/giphy.gif)

---

# [fit] `{command}{text object or motion}`

---

# [fit] `diw`
## [fit] delete in word

---

# [fit] `caw`
## [fit] change all word

---

# [fit] `yi)`
## [fit] yank all text inside parentheses

---

# [fit] `va"`
## [fit] visually select all inside doublequotes
## Including doublequotes

---

# [fit] Repetition
## [fit] The DOT command
### `.`

---

# [fit] Repeat the last command

![](http://media.giphy.com/media/3rgXBCsCWGS82uYKiI/giphy.gif)

---

# [fit] that's it

---

# [fit] but it's powerful

![](http://www.jeffbullas.com/wp-content/uploads/2013/12/9-Simple-and-Powerful-Ways-to-Get-More-Retweets-on-Twitter-Report-.jpg)

---

# [fit] Additional commands

* `dd` / `yy` - delete/yank the current line
* `D` / `C` - delete/change until end of line
* `^` / `$` - move to the beginning/end of line
* `I` / `A` - move to the beginning/end of line and insert
* `o` / `O` - insert new line above/below current line and insert

---

# [fit] Try and make actions repeatable
## [fit] Practice it

---

# [fit] Not everything is repeatable

## [fit] at least with the DOT command

---

# [fit] MACROS
![](http://media.giphy.com/media/Vm6YGB3Ng8lnW/giphy.gif)

---

# [fit] Macro
## [fit] A sequence of commands recorded to a register

---

## Record a macro

* `q{register}`
* (do the things)
* `q`

## Play a macro

* `@{register}`

![left](http://media.giphy.com/media/2F0IsIg0lHveE/giphy.gif)

---

# [fit] Plugins

---

# Plugins

* [vundle](https://github.com/gmarik/vundle) - plugin manager
* [nerdtree](https://github.com/scrooloose/nerdtree) - file drawer
* [ctrlp](https://github.com/kien/ctrlp.vim) - fuzzy file finder
* [fugitive](https://github.com/tpope/vim-fugitive) - git tool
* [syntastic](https://github.com/scrooloose/syntastic) - syntax checker / linter

---

# [fit] But My IDE does more
![](http://www.hollywoodreporter.com/sites/default/files/imagecache/thumbnail_570x321/2012/04/dawson_crying.jpg)

---

# [fit] Vim is extemely customizable
## [fit] Plugins tailor vim to your needs

--- 

# [fit] But we can still do more

---

![](http://d.pr/i/R5c+)

---

# [fit] vim + tmux

![](http://d.pr/i/R5c+)

---

# [fit] tmux
## [fit] `brew install tmux`

---

# [fit] What is tmux?

* Terminal multiplexer
* View and control multiple consoles
* Preconfigure environments

---

# [fit] `tmux new-session -s {session-name}`

---

# [fit] `tmux new-session -s pasta`
![](http://st.depositphotos.com/2650707/3938/v/450/depositphotos_39384587-Businessman-eating-pasta-at-home-and-working-on-computer.jpg)

---

# [fit] `~/.tmux.conf` - tmux configuration

* configure tmux

```bash
# unbind default prefix and set it to Ctrl+a
unbind C-b
set -g prefix C-a
bind C-a send-prefix
```

![inline 125%](http://d.pr/i/186BQ+)

![right fit](http://d.pr/i/18U1O+)

---

# [fit] There's a lot that tmux can do

---

# [fit] Synchronize-panes

![fit](http://d.pr/i/vRVt+)

---

# [fit] Create splits on the fly

![fit](http://d.pr/i/12gE5+)

---

# [fit] tmux + vim = :heart:

---

# [fit] [benmills/vimux](https://github.com/benmills/vimux)
## Interact with tmux from vim

---

# [fit] Execute commands from vim in a split

```vim
:call VimuxRunCommand("grunt test")
```

# [fit] Map the commands to a key

```vim
nmap <leader>z :call VimuxRunCommand("grunt test")<cr>
```

---

# [fit] I :heart: vim
## [fit] and I think you will, too

--- 

# [fit] Learn your editor well
## [fit] \(even if it's not vim\)

---

# [fit] Don't copy someone else's configuration
## [fit] Make it your own
![](http://www.sonymoviechannel.com/sites/default/files/movies/images/main_multiplicity.jpg)

---

# [fit] But share your configuration
![](http://media.giphy.com/media/Lf3P1KpoUREdy/giphy.gif)

---

# [fit] dotfiles

* Share your configuration
* Steal ideas from others
* [nicknisi/dotfiles](https://github.com/nicknisi/dotfiles)

## Others

* [bryanforbes/dotfiles](https://github.com/bryanforbes/dotfiles)
* [jason0x43/dotfiles](https://github.com/jason0x43/dotfiles)

![left](http://d.pr/i/19nW2+)

---

# [fit] Keep practicing

---

# [fit] :heart:
# [fit] <https://github.com/nicknisi/vim-workshop>
