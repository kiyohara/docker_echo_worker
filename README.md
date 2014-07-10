# DockerEchoWorker

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'docker_echo_worker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install docker_echo_worker

## Usage

1. Clone this project

  ```
  $ git clone https://github.com/kiyohara/docker_echo_worker.git
  $ cd docker_echo_worker
  ```

2. Make gem pkg

  ```
  $ rake build
  ```
3. Create docker image

  ```
  $ docker build -t docker_echo_worker .
  ```

4. Run docker container

  ```
  $ docker run -p 8080:8080 docker_echo_worker
  ```

5. Check API

  ```
  $ curl -X GET http://<docker host>:8080/
  $ curl -X GET http://<docker host>:8080/ping
  $ curl -X POST -d 'data=xxx' http://<docker host>:8080/echo
  ```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/docker_echo_worker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
