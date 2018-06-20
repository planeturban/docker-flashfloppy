FROM ubuntu
ENV MAKE_OPTS ""
ENV HASH ""
RUN apt-get update && \
	apt-get -y install \
		git \
		gcc-arm-none-eabi \
 		srecord \
 		stm32flash \
 		python-pip \
 		wget \
 		unzip \
 		zip \
		apt-utils && pip install --user crcmod intelhex

WORKDIR /tmp/FlashFloppy

CMD git clone https://github.com/keirf/FlashFloppy.git . && git checkout $HASH && make $MAKE_OPTS dist && mv flashfloppy*.zip /output

# Ports and volumes.
VOLUME /output
