---
title: "CLI |> Exclude Directories in grep"
date: 2020-07-22T21:56:00+08:00
lastmod: 2020-07-22T21:56:00+08:00
draft: false
author: "qaRabbit"
tags: ["CLI","grep"]
summary: "exclude directories in grep"
images: 
- https://images.pexels.com/photos/46160/field-clouds-sky-earth-46160.jpeg
---

<hr>


{{<highlight zsh>}}
grep -R --exclude-dir={node_modules,dir1,dir2,dir3} 'some pattern' /path/to/search
{{</highlight>}}

<hr>

*Reference*:

{{< ref 
"https://stackoverflow.com/questions/6565471/how-can-i-exclude-directories-from-grep-r"
\>}}
