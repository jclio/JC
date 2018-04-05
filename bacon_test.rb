ENV['RACK_ENV'] = 'test'
require 'bacon'
require 'rack/test'

describe 'The HelloWorld App' do
  extend Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "say hello" do
    get '/'
    last_response.should.be.ok
    last_response.body.should.equal 'Hello World'
  end

end
class Bacon::Context
  include Rack::Test::Methods
end