package main

import (
    "fmt"
    "log"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    http.ServeFile(w, r, "index.html")
}

func main() {
    http.HandleFunc("/", handler)
    fmt.Println("Serving stuff...")
    log.Fatal(http.ListenAndServe(":9000", nil))
}
