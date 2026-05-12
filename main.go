package main

import (
	"fmt"
	"net/url"
	"os"
	"os/exec"
	"runtime"
	"strings"
)

func openBrowser(link string) {
	var cmd *exec.Cmd

	switch runtime.GOOS {
	case "linux":
		cmd = exec.Command("xdg-open", link)
	case "windows":
		cmd = exec.Command("rundll32", "url.dll,FileProtocolHandler", link)
	case "darwin":
		cmd = exec.Command("open", link)
	default:
		fmt.Println("Unsupported OS")
		return
	}

	cmd.Start()
}

func main() {
	args := os.Args[1:]

	if len(args) == 0 {
		fmt.Println("Usage: s <query>")
		return
	}

	query := strings.Join(args, " ")
	searchURL := "https://www.google.com/search?q=" + url.QueryEscape(query)

	openBrowser(searchURL)
}
