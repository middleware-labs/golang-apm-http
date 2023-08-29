# golang-apm-http

go get github.com/middleware-labs/golang-apm-http

```golang

package main

import (
	 "net/http"
	  track "github.com/middleware-labs/golang-apm/tracker"
      mwhttp "github.com/middleware-labs/golang-apm-http/http"
)

func hello(w http.ResponseWriter, req *http.Request) {
    fmt.Fprintf(w, "hello\n")
}

func main() {
	 go track.Track(
        track.WithConfigTag("service", "your service name"),
        track.WithConfigTag("projectName", "your project name"),
        track.WithConfigTag("accessToken", "your access token"),
    )
     http.Handle("/hello", mwhttp.MiddlewareHandler(http.HandlerFunc(hello), "hello"))
     http.ListenAndServe(":8090", nil)	
}

~~~~
