---
title: "Hugo |> Hugo Custom Shortcodes"
date: 2020-05-02T16:38:02+08:00
draft: false
tags: ["Hugo"]
summary: "create a shortcode"
---

<hr>

I want to create a shortcode to convert

{{< highlight markdown >}}
{{</* CUSTOM_TAG "https://stackoverflow.com/questions/25589113/how-to-select-a-single-field-for-all-documents-in-a-mongodb-collection" */>}}
{{< /highlight >}}

to 

{{< highlight markdown >}}
[https://stackoverflow.com/questions/25589113/how-to-select-a-single-field-for-all-documents-in-a-mongodb-collection](https://stackoverflow.com/questions/25589113/how-to-select-a-single-field-for-all-documents-in-a-mongodb-collection)
{{< /highlight >}}

Solution:

{{< highlight zsh >}}
mkdir layouts/shortcodes
vim layouts/shortcodes/ref.html
{{< /highlight >}}

{{< highlight html >}}
ref.html

<ul>
  {{ range .Params }}
  <li><a href="{{ . }}">{{ . }}</a></li>
  {{ end }}
</ul>
{{< /highlight >}}

## PS:

We can use shortcode *figure* to set image width and/or height.

{{< highlight markdown >}}
{{</* figure src="your-image-link" width=200 height=200 title="your-image" */>}}
{{< /highlight >}}

<hr>

*References*:

{{< ref 
"https://gohugo.io/content-management/shortcodes/"
"https://gohugo.io/templates/shortcode-templates/"
"https://liatas.com/posts/escaping-hugo-shortcodes/"
"https://gohugo.io/templates/introduction/#iteration"
"https://stackoverflow.com/questions/14675913/changing-image-size-in-markdown"
 >}}
