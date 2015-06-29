class ServerPort

  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    
    response_body = response.first + "80" + "\n"

    [status, headers, response << response_body]    
  end
end