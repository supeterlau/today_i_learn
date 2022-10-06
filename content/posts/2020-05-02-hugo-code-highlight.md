---
title: "Hugo |> Customize Hugo Code Highlight"
date: 2020-05-02T16:34:18+08:00
draft: false
author: "qaRabbit"
tags: ["Hugo"]
summary: "config your hugo code highlight theme"
---

<hr>

## Uses Chroma 

( Hugo's default code highlighter )

1. Config highlight

{{< ref "https://gohugo.io/getting-started/configuration-markup#highlight" >}}

default config (**some of these settings can be set per code block**)

{{< highlight toml >}}
[markup]
  [markup.highlight]
    codeFences = true
    guessSyntax = false
    hl_Lines = ""
    lineNoStart = 1
    lineNos = false
    lineNumbersInTable = true
    noClasses = true
    style = "monokai"
    tabWidth = 4
{{< /highlight >}}

2. Generate Syntax Highlighter CSS

If you prefer another theme (like [dracula](https://draculatheme.com/)) instead of default monokai, below command will help.

You may change dracula to any theme name you like, check [all themes](https://xyproto.github.io/splash/docs/).

{{< highlight zsh >}}
hugo gen chromastyles --style=dracula > <HUGO_ROOT>/static/css/syntax.css
{{< /highlight >}}

**Don't forget to set `pygmentsUseClasses=true` in your config.toml file !!!**

3. Include syntax.css in your head.html

copy `head.html` from theme/<YOUR_THEME_PATH>/layouts/partials/head.html to <HUGO_ROOT>/layouts/partials/head.html

add

{{< highlight plain >}}
<link type="text/css" rel="stylesheet" href="{{ "/" | relURL }}css/syntax.css">
{{< /highlight >}}

below the last `<link>` tag

<hr>

*References*:

{{< ref 
"https://gohugo.io/getting-started/configuration-markup#highlight"
"https://gohugo.io/content-management/syntax-highlighting/"
"https://xyproto.github.io/splash/docs/all.html"
>}}
