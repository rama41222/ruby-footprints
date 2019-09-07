class FootPrint < ActiveRecord::Base
  self.abstract_class = true
  establish_connection(YAML.load_file(open(Rails.root.to_s + '/config/database.yml'))['development'])
end
