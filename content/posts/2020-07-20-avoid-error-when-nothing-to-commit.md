---
title: "Git |> Avoid Error When Nothing to Commit"
date: 2020-07-20T12:20:35+08:00
draft: false
author: "qaRabbit"
tags: ["Git",]
summary: "Checking the exit code of git diff-index to avoid git commit fail"
images:
- https://cdn.svgporn.com/logos/git-icon.svg
---

<hr>


Checking the exit code of git diff

`git diff-index --quiet HEAD || git commit -m 'bla'`

Not produce the correct result if there are differences only between the index and work tree.

Improve Answer:

`git diff-index --quiet --cached HEAD || git commit -m 'bla'`

Other solution:

`git commit -m 'bla' --allow-empty`

Not good enough, it would actually create a commit though.

<hr>

*Reference*:

{{< ref 
"https://stackoverflow.com/questions/8123674/how-to-git-commit-nothing-without-an-error"
"https://coderwall.com/p/vkdekq/git-commit-allow-empty"
 >}}
