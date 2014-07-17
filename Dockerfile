FROM ubuntu

MAINTAINER Tomokazu Kiyohara <tomokazu.kiyohara@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y install ruby
RUN apt-get -y install ruby-dev
RUN apt-get -y install make
RUN apt-get -y install libssl-dev

RUN apt-get -y install git
RUN gem install --no-ri --no-rdoc rake
RUN gem install --no-ri --no-rdoc bundler

RUN git clone https://github.com/kiyohara/docker_echo_worker.git /tmp/docker_echo_worker
RUN cd /tmp/docker_echo_worker; rake build
RUN gem install --no-ri --no-rdoc /tmp/docker_echo_worker/pkg/docker_echo_worker-*.gem
RUN rm -rf /tmp/docker_echo_worker;

ENTRYPOINT [ "docker_echo_worker" ]

EXPOSE 8080
