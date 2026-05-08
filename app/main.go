package main

import (
	"fmt"
	"net/http"
)

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintln(w, "Hello Go")
	})

	fmt.Println("start :9577")

	http.ListenAndServe(":9577", nil)
}