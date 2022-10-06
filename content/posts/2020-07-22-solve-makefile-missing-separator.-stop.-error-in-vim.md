---
title: "Vim |> Solve Makefile Error 'Missing Separator. Stop' in Vim"
date: 2020-07-22T21:11:04+08:00
lastmod: 2020-07-22T21:11:04+08:00
draft: false
author: "qaRabbit"
tags: ["Vim","Makefile"]
summary: "Replace spaces with tab in Vim"
images: 
- https://images.pexels.com/photos/2114014/pexels-photo-2114014.jpeg
---

<hr>


I got this error because I configed vim auto replace tabs to spaces.

use command 

`%s/^[ ]\+/\t/g`

solved it.

<!-- {{<highlight zsh>}}
{{</highlight>}} -->

<hr>

*Reference*:

{{< ref 
"https://unix.stackexchange.com/questions/125757/make-complains-missing-separator-did-you-mean-tab"
\>}}
