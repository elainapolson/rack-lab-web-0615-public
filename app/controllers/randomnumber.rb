class RandomNumber

  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    response_body = response.first + rand(1..1000).to_s
    # binding.pry
    [status, headers, response << response_body]
  end

end

#request method, serverport, about maker