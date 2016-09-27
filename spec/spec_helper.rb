RSpec.configure do |config|
  config.after(:all) { App.close! }
end
