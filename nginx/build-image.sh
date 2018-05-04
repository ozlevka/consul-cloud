#!/bin/bash

docker run --rm -it -v $(pwd):/app ozlevka/passmaker:2

docker build -t nginx .
