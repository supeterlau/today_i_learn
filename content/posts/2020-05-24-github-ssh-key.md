---
title: "SSH |> Setup SSH for GitHub or other similar services"
date: 2020-05-24T16:57:46+08:00
draft: false
summary: "generate and manage your ssh keys"
author: "qaRabbit"
tags: ["SSH","GitHub"]

---

<hr>


Open your terminal

## Generate new SSH key 

`ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`

terminal will prompt:

`Enter a file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]`

Most ssh key are stored under /Users/you/.ssh directory, unless you understand what you are doing.

`id_rsa` is the default private key used in SSH connection. 

note:

  If you find this file already exists, then you can choose another name or type `y` to overwrite the file (BE CAREFUL: you may affect softwares rely on this file).

  If you change the file name, type in something like `/Users/you/.ssh/your_choosen_name_rsa`.

type a secure passphrase (add an extra layer of security)

`> Enter passphrase (empty for no passphrase): [Type a passphrase]`
`> Enter same passphrase again: [Type passphrase again]`

## Add to your service account keys list

In your terminal

`cd /Users/you/.ssh/`

copy content from `/Users/you/.ssh/your_choosen_name_rsa.pub` and paste to ssh key list in your service accout setting (like https://github.com/settings/ssh/new).

## Add to SSH Agent

Start the ssh-agent in the background.

`eval "$(ssh-agent -s)"`

macOS: `ssh-add -K ~/.ssh/your_choosen_name_rsa` (add key to keychain)

Linux: `ssh-add ~/.ssh/your_choosen_name_rsa`

## Test your ssh key setting

`ssh -T git@github.com`

If everything goes well, your will see:

  Hi YOUR_GITHUB_NAME! You've successfully authenticated, but GitHub does not provide shell access.

## Reset passphase

`ssh-keygen -p`

<hr>

*Reference*:

{{< ref 
"https://help.github.com/en/github/authenticating-to-github/about-ssh"
"https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent"
"https://help.github.com/en/github/authenticating-to-github/working-with-ssh-key-passphrases"
"https://kb.iu.edu/d/aeww"
"https://linuxize.com/post/using-the-ssh-config-file/"
 >}}
