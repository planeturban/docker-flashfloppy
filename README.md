# docker-flashfloppy
usage: docker run -v $(pwd):/output --rm -ti planeturban/docker-flashfloppy

or, to check out a specific version:
docker run -v -e "COMMIT=<commit hash>" $(pwd):/output --rm -ti planeturban/docker-flashfloppy

or, to build with debug (serial console) enabled:
docker run -v -e debug=y $(pwd):/output --rm -ti planeturban/docker-flashfloppy
File will be suffixed with -debug.zip:
