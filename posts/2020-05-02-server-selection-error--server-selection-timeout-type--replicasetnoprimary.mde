---
title: "MongoDB |> server selection error: server selection timeout Type: ReplicaSetNoPrimary"
date: 2020-05-02T16:10:40+08:00
draft: false
tags: ["MongoDB"]
summary: "error connecting to host: could not connect to server: server selection error: Type: ReplicaSetNoPrimary"
---

<hr>

Get a wired error message:

{{< highlight zsh >}}
error connecting to host: could not connect to server: server selection error: server selection timeout, current topology: { Type: ReplicaSetNoPrimary, Servers: [{ Addr: admin:27017, Type: Unknown, State: Connected, Average RTT: 0, Last error: connection() : dial tcp: lookup admin: no such host }, ] }
{{< /highlight >}}

when using `mongoimport` command.

Fix that by adding argument `--uri`

Example:

{{< highlight zsh >}}
mongoimport --uri "mongodb://<username>:<password>@<ip or domain>:<port>/?authSource=<authSource>&authMechanism=SCRAM-SHA-1" -d <db> -c <collection> --file=./data.json
{{< /highlight >}}

Maybe also works with `mongo` and `mongoexport`

<hr>

*References*:

- [https://stackoverflow.com/questions/59413297/error-connecting-to-host-could-not-connect-to-server-server-selection-error-s](https://stackoverflow.com/questions/59413297/error-connecting-to-host-could-not-connect-to-server-server-selection-error-s)
