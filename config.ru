$:.unshift(File.dirname(__FILE__))
require 'app'

Rack::Handler.default.run(App, :Port => 9494)
