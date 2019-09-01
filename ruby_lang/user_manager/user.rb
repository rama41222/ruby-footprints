require 'json'

class User
  attr_accessor :name, :email, :permissions

  # *args is an array f arguments
  def initialize(*args)
    @name = args[0]
    @email = args[1]
    @permissions = User.permissions_from_template
  end

  def self.permissions_from_template
    file = File.read 'permission.json'
    JSON.load(file, symbolize_keys: true)
  end

  def save
    user = {
        name: @name,
        email: @email,
        permissions: @permissions.to_json
    }
    open('users.json', 'a') do |file|
      file.puts user
    end
  end
end

