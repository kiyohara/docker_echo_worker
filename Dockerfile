FROM base

MAINTAINER Tomokazu Kiyohara <tomokazu.kiyohara@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y install ruby
RUN apt-get -y install ruby-dev
RUN apt-get -y install make
RUN apt-get -y install libssl-dev

COPY pkg/docker_echo_worker-0.0.1.gem /
RUN gem install --no-ri --no-rdoc /docker_echo_worker-0.0.1.gem

ENTRYPOINT [ "docker_echo_worker" ]

