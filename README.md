# docker-flashfloppy
usage: docker run -v $(pwd):/output --rm -ti planeturban/docker-flashfloppy

or, to check out a specific version:
docker run -v -e "COMMIT=<commit hash>" $(pwd):/output --rm -ti planeturban/docker-flashfloppy

or, to build with debug out a specific version, file will be suffixed with -debug.zip:
docker run -v -e debug=y $(pwd):/output --rm -ti planeturban/docker-flashfloppy
