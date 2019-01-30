package main

import "testing"

func TestHello(t *testing.T) {
	if HelloWorld() != "Hello World, traefik workshop1!" {
		t.Error("Testing error")
	}
}
