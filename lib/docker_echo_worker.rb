require "docker_echo_worker/version"

module DockerEchoWorker
  $LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__)))

  require 'rack'
  require 'puma'
  require 'grape'

  require 'docker_echo_worker/api'
  require 'docker_echo_worker/server'
end
