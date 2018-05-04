#!/bin/bash

docker run --rm -it -v $(pwd):/app ozlevka/passmaker:1

docker build -t nginx .