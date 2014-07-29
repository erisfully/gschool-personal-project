class UsersTable

  attr_reader :database_connection

  def initialize(database_connection)
    @database_connection = database_connection
  end

  def add_user(username, email, password)
    database_connection.sql("INSERT INTO users (username, email, password) VALUES ('#{username}','#{email}','#{password}')")
  end

end