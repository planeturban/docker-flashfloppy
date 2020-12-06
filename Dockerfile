FROM ubuntu:20.04
ENV MAKE_OPTS ""
ENV COMMIT ""
ENV DEBUG ""
RUN apt-get update && \
	apt-get -y install \
		git \
		gcc-arm-none-eabi \
 		srecord \
 		stm32flash \
 		python3-pip \
 		wget \
 		unzip \
 		zip \
		apt-utils && pip3 install --user crcmod intelhex

WORKDIR /tmp/FlashFloppy

CMD git clone https://github.com/keirf/FlashFloppy.git . && git checkout $COMMIT && make $MAKE_OPTS dist && if [ ! -z $debug ]; then mv flashfloppy*.zip /output/$(echo flashfloppy*.zip | sed 's/\(.*\).zip/\1-debug.zip/'); else mv flashfloppy*.zip /output; fi
#$(echo flashfloppy*.zip | sed 's/\(.*\).zip/\1-debug.zip/')
#

# Ports and volumes.
VOLUME /output
