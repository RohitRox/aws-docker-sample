require 'sinatra'
require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    "Hello from sinatra! The time is #{ Time.now } on #{ `hostname` }!"
  end
end
