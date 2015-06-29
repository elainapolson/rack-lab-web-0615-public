class ErbMaker
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] == "/about"
      status, headers, response = @app.call(env)
      response_body = "<h1><a href='/'>Are you lost?</a></h1>"
      [status, headers, [response_body]]
    else
      status, headers, response = @app.call(env)
      html = File.read("lib/templates/index.html.erb")
      template = ERB.new(html)
      content = template.result(binding)
      [status, headers, [content]]
    end
  end
end