---
title: "Self Signed TLS Phoenix via Caddy"
date: 2022-07-04T14:03:32+08:00
draft: false
---

In case you need local https support, and no other ways to config chrome.

Maybe you can use caddy as reverse proxy for phoenix.

Caddyfile:

{{< highlight json >}}
	https://localhost:5000 {
		reverse_proxy 127.0.0.1:4000
	}
{{< /highlight >}}

Next: install caddy self-signed cert file on your OS.

location of self-signed cert file: 

{{< highlight zsh >}}
$HOME/.local/share/caddy (For Unix/Linux/macOS)
{{< /highlight >}}

