- s) - Surround visual selection with parenthesis
- S - v - s - ) - Surround word under cursor with parenthesis in normal mode
- SPC p f - Stands for `helm-projectile-find-file`. This is the vim's Ctrl-P equivalent.

- SPC SPC - evil-mc-* commands to enable, disable and control multiple cursors mode.
- SPC w * - I used it many times, but never thought about very usefull `M` command, which swaps two windows

- M-x rename-buffer - my solution to open up new instance of eshell. I'm renaming current eshell to smth new and later I'm opening new one (You can rename it too).

- M-/ - is a default expansion key for Spacemacs's yasnippet. Handling snippets is quite easy. You should type `M-x yas-new-snippet`. Wizard will provide you with instructions for creating new snippet, will help you to save snippet to private mode folder and will compile and load it into current layer(by default snippets are layer local, which is correct behaviour in my opinion). If snippets are not reloaded, then you can use `yas-recompile-all` and `yas-reload-all`
