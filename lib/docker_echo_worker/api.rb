module DockerEchoWorker
  class API < Grape::API
    format :json

    get '/' do
      {
        request: 'root',
        time: Time.now,
        name: 'DockerEchoWorker'
      }
    end

    get :ping do
      {
        request: 'ping',
        time: Time.now,
        ping: 'pong'
      }
    end

    post :ping do
      {
        request: 'ping',
        time: Time.now,
        error: 'GET method required'
      }
    end

    post :echo do
      res = {
        request: 'echo',
        time: Time.now
      }

      data = params[:data]
      if data
        res.merge!({ data: data })
      else
        res.merge!({ error: 'data argument required' })
      end
      res
    end

    get :echo do
      {
        request: 'echo',
        time: Time.now,
        error: 'POST method required'
      }
    end
  end
end
