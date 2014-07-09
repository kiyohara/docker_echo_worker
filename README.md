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

1. Create docker image

  ```
  $ docker build -t <username>/docker_echo_worker .
  ```

2. Run docker container

  ```
  $ docker run -p 8080:8080 <username>/docker_echo_worker
  ```

3. Check API

  ```
  $ curl -X GET http://localhost:8080/
  $ curl -X GET http://localhost:8080/ping
  $ curl -X POST -d 'data=xxx' http://localhost:8080/echo
  ```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/docker_echo_worker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
