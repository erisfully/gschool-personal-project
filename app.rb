require "sinatra"
require "rack-flash"
require "active_record"
require "gschool_database_connection"
require "./lib/users_table"

class App < Sinatra::Application
  enable :sessions
  use Rack::Flash

  def initialize
    super
    @users_table = GschoolDatabaseConnection::DatabaseConnection.establish(ENV["RACK_ENV"])
  end


  get "/" do
    erb :root
  end

  post "/register" do

  end

  get "/register" do
    erb :register
  end

  get "/login" do
    erb :login
  end

  get "/about" do
    erb :about
  end

end