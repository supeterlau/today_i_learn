---
title: "Hugo |> Dev Server Open Browser"
date: 2020-08-28T00:10:37+08:00
lastmod: 2020-08-28T00:10:37+08:00
draft: false
author: "qaRabbit"
tags: ["macOS", "Hugo"]
summary: "a simple way to open browser"
images: 
- https://images.pexels.com/photos/3742711/pexels-photo-3742711.jpeg?cs=srgb&dl=pexels-andrew-beatson-3742711.jpg&fm=jpg
---

<hr>


Why hugo dev server can't open browser tab automatically?

Modify hugo source code will definitely solve this issue.

Or we can use two simpler ways:

- use some programe to run command `hugo server` and `open_browser` [in parallel](https://www.cyberciti.biz/faq/how-to-run-command-or-code-in-parallel-in-bash-shell-under-linux-or-unix/)

- use simple command sleep

Here is the second way on **macOS**: (open command only works on macOS)

{{<highlight zsh>}}
#!/bin/bash

LOCAL_URL=http://localhost:1313

run_after () {
  duration=${1:-3}
  sleep $duration
  echo 'After '$duration
  # change open command to proper one
  open --new -a "Google Chrome" --args $LOCAL_URL
}

run_after 1 &
hugo server
{{</highlight>}}


<hr>

*Reference*:

{{< ref 
"https://github.com/gohugoio/hugo/issues/6293"
"https://www.cyberciti.biz/faq/how-to-run-command-or-code-in-parallel-in-bash-shell-under-linux-or-unix/"
"https://zwbetz.com/open-a-new-google-chrome-tab-or-window-via-command-line-on-mac"
\>}}

<!-- {{<highlight zsh>}}
{{</highlight>}} -->
