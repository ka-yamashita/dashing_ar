require 'active_record'
ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(:development)
