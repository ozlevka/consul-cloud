#!/bin/bash

docker run --rm -it -v $(pwd):/app ozlevka/passmaker:3

docker build -t nginx:current .
