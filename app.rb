require "sinatra"
require "rack-flash"

class App < Sinatra::Application
  enable :sessions
  use Rack::Flash

  get "/" do
    "Hello World!"
  end

end