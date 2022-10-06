---
title: "macOS |> Convert SVG to PNG on macOS via Cli"
date: 2020-07-22T21:21:23+08:00
lastmod: 2020-07-22T21:21:23+08:00
draft: false
author: "qaRabbit"
tags: ["macOS","CLI","SVG"]
summary: "a simple way to convert svg to png"
images: 
- https://images.pexels.com/photos/907485/pexels-photo-907485.jpeg
---

<hr>


<!-- {{<highlight zsh>}}
{{</highlight>}} -->

✅ A successful method:

`brew install librsvg`

`rsvg-convert -h 32 icon.svg > icon-32.png (creates a 32px high png)`

<hr>

*Reference*:

{{< ref 
"https://superuser.com/questions/134679/command-line-application-for-converting-svg-to-png-on-mac-os-x/723031"
"https://medium.com/@alexadam/convert-svg-to-png-icons-on-mac-ae6db9c67a24"
"https://stackoverflow.com/questions/9853325/how-to-convert-a-svg-to-a-png-with-imagemagick"
\>}}
