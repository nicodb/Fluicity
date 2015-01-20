# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Initialize default meta tags.
APP_CONFIG = YAML.load_file("#{Rails.root}/config/meta.yml")
