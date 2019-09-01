require 'json'

class User
  atter_accesssor :name, :email, :permissions

  # *args is an array f arguments
  def initialize(*args)
    @name = args[0]
    @email = args[1]
    @permissions = User.permissions_from_template
  end

  def self.permissions_from_template
    file = File.read('permission.json')
    JSON.load(file, nil, symbolize_names: true)
  end

  def self.save
    user = {
        :name => @name,
        :email => @email,
        :permissions => @permissions.to_json
    }
    open('users.json') do |file|
      file.puts user
    end
  end
end

