---
title: "Vim |> How to Disable Fold When Launch Vim"
date: 2020-07-20T12:03:50+08:00
draft: false
author: "qaRabbit"
tags: ["Vim",]
summary: "disable vim fold"
images:
- https://cdn.svgporn.com/logos/vim.svg
---

<hr>


**Work**:

`set foldlevelstart=99` 

**Not Work**:

`set foldmethod=syntax`

`set nofoldenable`

Use `za` `zo` `zi` to fold code.

<hr>

*Reference*:

{{< ref 
"https://vi.stackexchange.com/questions/12334/how-to-prevent-folding-when-vim-is-launched"
"https://unix.stackexchange.com/questions/141097/how-to-enable-and-use-code-folding-in-vim"
 >}}

