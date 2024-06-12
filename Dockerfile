FROM debian:latest
LABEL MAINTAINER="https://github.com/anasdh06"

WORKDIR /adphish/
ADD . /adphish

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./adphish.sh"]
