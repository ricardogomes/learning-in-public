#!/usr/bin/env bash

main() {

    if [ $# -eq 1 ]; then
        echo "Hello, $1"
    else
        echo "Usage: error_handling.sh <person>"
        return 42 
    fi

}

main "$@"
