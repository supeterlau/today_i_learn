---
title: "MongoDB |> How to Select a Single Field for All Documents in a MongoDB Collection"
date: 2020-03-26T00:35:45+08:00
lastmod: 2020-03-26T00:45:45+08:00
draft: false
tags: ["MongoDB"]
summary: "get things we want, no more no less"
# postSummary: "HAHAHA"
---

<hr />

{{< highlight javascript >}}
db.inventory.find( { type: 'food' }, { item: 1, qty: 1 } )
{{< /highlight >}}

In above example from the folks at Mongo, the returned documents will contain only the fields of item, qty, and _id.

{{< highlight javascript >}}
db.inventory.find( { type: 'food' }, { item: 1, qty: 0 } )
{{< /highlight >}}

In above example from the folks at Mongo, the returned documents will contain only the fields of item, and _id.

<hr>

*References*:

- [https://stackoverflow.com/questions/25589113/how-to-select-a-single-field-for-all-documents-in-a-mongodb-collection](https://stackoverflow.com/questions/25589113/how-to-select-a-single-field-for-all-documents-in-a-mongodb-collection)

