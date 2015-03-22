require 'active_record'
ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(ENV['RACK_ENV'].to_sym)
