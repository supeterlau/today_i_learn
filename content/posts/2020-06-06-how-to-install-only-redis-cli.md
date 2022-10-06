---
title: "Redis |> How to Install Redis Cli Only on Your macOS/Linux"
date: 2020-06-06T18:01:12+08:00
draft: false
author: "qaRabbit"
tags: ["Redis","macOS","Linux","Docker"]
summary: "Talk about the Docker way to avoid install redis-server on your local machine"
image:
- https://cdn.svgporn.com/logos/redis.svg
---

<hr>


**On macOS**

During modern development, we rarely need to install a redis server on Local(Development) machine. On the other hand, we do need a redis client (CLI or GUI) to access redis server.

Many people don't care the fact that in order to insall client, they install both server and client.

YOU may find many great GUI redis clients, while I prefer a old cli way: run redis-server in docker, then start a new temporary redis-server container to start redis-cli 

{{<highlight zsh>}}

# start redis-server

docker run --name redis-dev -v YOUR_LOCAL_REDIS_DATA_DIR:/data -p 127.0.0.1:6379:6379 -d redis:alpine redis-server --appendonly yes

# start redis-cli

docker run --rm -it --link redis-dev:redis redis:alpine redis-cli -n 9 -h redis

redis:6379[9]> keys *
{{</highlight>}}

**On GNU/Linux**, you can easily find package like: [redis-cli](https://codewithhugo.com/install-just-redis-cli-on-ubuntu-debian-jessie/) to install.

<hr>

*Reference*:

{{< ref 
"https://stackoverflow.com/questions/39704273/macos-x-is-there-a-way-to-install-only-redis-cli/39706850"
 >}}
