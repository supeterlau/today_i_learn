---
title: "SSH |> Covert New Format SSH Private Key to PEM"
date: 2020-08-26T20:23:47+08:00
lastmod: 2020-08-26T20:23:47+08:00
draft: false
author: "qaRabbit"
tags: ["SSH",]
summary: "convert ssh private key to PEM format"
images: 
- https://images.pexels.com/photos/4245826/pexels-photo-4245826.jpeg
---

<hr>


*OpenSSH 6.5 and later support a new, more secure format to encode your private key*

{{<highlight zsh>}}
ssh-keygen -p -m PEM -f ~/.ssh/id_rsa
{{</highlight>}}

Generate PEM format private key with ssh-keygen:

{{<highlight zsh>}}
ssh-keygen -m PEM -t rsa -b 4096 -C "email@example.com"
{{</highlight>}}

Generate public key from private key:

{{<highlight zsh>}}
ssh-keygen -l -f ~/.ssh/id_rsa
{{</highlight>}}

<hr>

*Reference*:

{{< ref
"https://serverfault.com/questions/939909/ssh-keygen-does-not-create-rsa-private-key"
"https://wiki.archlinux.org/index.php/SSH_keys"
"https://superuser.com/questions/1515261/how-to-quickly-identify-ssh-private-key-file-formats"
"https://serverfault.com/questions/9708/what-is-a-pem-file-and-how-does-it-differ-from-other-openssl-generated-key-file"
"https://unix.stackexchange.com/questions/26924/how-do-i-convert-a-ssh-keygen-public-key-into-a-format-that-openssl-pem-read-bio"
\>}}

