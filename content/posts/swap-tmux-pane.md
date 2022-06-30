---
title: "Swap Tmux Pane"
date: 2022-06-30T18:50:01+08:00
draft: false
---

https://superuser.com/questions/879190/how-does-one-swap-two-panes-in-tmux

into tmux command:

Prefix + : (Prefix + SHIFT + ;)

By default, prefix is Ctrl+b 

in my case, it's Ctrl+x

Prefix + q : show pane ID 

swap pane id 3 to id 4

`> swap-pane -s3 -t4`

DONE.
