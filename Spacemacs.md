- s) - Surround visual selection with parenthesis
- S - v - s - ) - Surround word under cursor with parenthesis in normal mode
- SPC p f - Stands for `helm-projectile-find-file`. This is the vim's Ctrl-P equivalent.

- SPC SPC - evil-mc-* commands to enable, disable and control multiple cursors mode.
- SPC w * - I used it many times, but never thought about very usefull `M` command, which swaps two windows

- M-x rename-buffer - my solution to open up new instance of eshell. I'm renaming current eshell to smth new and later I'm opening new one (You can rename it too).

- M-/ - is a default expansion key for Spacemacs's yasnippet. Handling snippets is quite easy. You should type `M-x yas-new-snippet`. Wizard will provide you with instructions for creating new snippet, will help you to save snippet to private mode folder and will compile and load it into current layer(by default snippets are layer local, which is correct behaviour in my opinion). If snippets are not reloaded, then you can use `yas-recompile-all` and `yas-reload-all`

- M-x ibuffer - Smart buffer control (not evil mode, but usefull). To close every dired buffer we need to move to any dired file and press `* /`, it will select all of them. `D` - to delete them. I found a weird way to close this buffer. I press `RET` on any other buffer with evil mode. From there i press `SPC b C-d`, write `ibuffer` and it kills it. Weird approach, but works for now.

- mx - vim style (book)marks, this command sets it under cursor with name `x`. Feature I didn't know exists. Missed it, cause I used it a lot in IntelliJ. You can watch `:marks` every bookmark this way.

- cs]) - Change Surround from [] to (). You can use any surrounding. Rules are the same `(` with additional spaces and `)` without them.

- yyp - Superusefull command to copy current linen and paste it after. `yy` could be `Y` and `P` for pasting line before the current(not after). `dd` instead of `yy` removes
the line.

- ESC-ESC-ESC - make current buffer full-screen.

- SPC w w - switch between two windows. Quite usefull.

- SPC f F - helm-find-files supports opening a file as root with C-c r, it will ask you a password

- rectangle-number-lines - It has very complex shortcut so it's easier to type. Well. This is game changer. It allows you to insert a column of increasing numbers when you are in visual selection mode. Really game changer.

- switch to sgml-mode, then call sgml-pretty-print - format xml, quite slow, but working. formats it really well :)
But you should select a region first and then it will create smth like this:
```
<UniqueKey>1
</UniqueKey>
<QuoteNum>1
</QuoteNum>
```

- SHIFT + j - move next line up to previous

- SHIFT + o in dired mode - change ownership of the file. didn't try it with directories, but I suppose it works. Good!

- SPC x (J|K) - move selected code snippet (aka Alt + arrows). Do not forget to select something before dragging!

TODO: Setup chm reader inside Emacs. Two panel file browser(emacs-mc). Eshell - really need to dig it. Find mode to work with IO language. Read pdf inside emacs. Setup slack with notifications, code snippets, emoji and colorfull output. And how to search text in currently open `dired mode`?

- SPC s S - search selected string in current file (opens up minibuffer with preview)
- SPC s s - just search in file with nice preview, interface is the same as in previous command

- Enter dired mode -> Select files with `m` -> Call `dired-to-compress(Z) or dired-to-compress-to(c)` - you can add any extension to your archive and so you can create `zip`, `gz` and I believe many more packages.

-   Global search:
        - SPC / and type in your search string
        - SPC x S and search string - where x is your scope indicator (p for project, d for directory, etc..)
    Once you have the occurences you want, hit C-c C-e inside the helm buffer to put all your match occurences and puts them into a special buffer
    in that buffer you can use any commands you'd normally use on a buffer
    strike C-c C-c to commit changes

 To open up your search results in separate buffer (to work with them (you'll be able to open them one by one))
 Ctrl x s






- TODO: notes about Ruby, Elixir and Haskell modes. Would be greate to write a bit about DAP debuggers.







ELIXIR:

To run your test with available IEx.pry you can run them with `iex -S mix test --trace`
`--trace` will stop them from timing out and `iex -S` will run them inside IEx session, that will catch `pry`
There is also awesome `--no-start` flag, to avoid starting supervision tree. Summary: read the docs :)  
