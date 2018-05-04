#!/bin/bash

docker run --rm -it -v $(pwd):/app ozlevka/passmaker:4

docker build -t nginx:current .
