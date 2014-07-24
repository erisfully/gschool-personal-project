require "sinatra"
require "rack-flash"
require "active_record"
require "gschool_database_connection"

class App < Sinatra::Application
  enable :sessions
  use Rack::Flash

  def initialize
    super
    @database_connection = GschoolDatabaseConnection::DatabaseConnection.establish(ENV["RACK_ENV"])
  end


  get "/" do
    erb :root
  end

  get "/register" do
    erb :register
  end

  get "/login" do
    "login"
  end

  get "/about" do
    "about things"
  end

end