# docker-flashfloppy
usage: docker run -v $(pwd):/output --rm -ti planeturban/docker-flashfloppy

or, to check out a specific version:
docker run -v -e "HASH=<commit hash>" $(pwd):/output --rm -ti planeturban/docker-flashfloppy
