package io.nextasy

import spark.Spark.get

fun main(args: Array<String>) {
  get("/greet/:name") {
    req, res -> println(req.body())
    res.type("application/json")
    "{ \"response\": \"Hello "+ req.params(":name") +"\"}"
  }
}

