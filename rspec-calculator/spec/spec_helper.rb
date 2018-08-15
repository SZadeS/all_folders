
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
require_relative "../lib/calc_engine.rb"
RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true

end
