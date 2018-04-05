ENV['RACK_ENV'] = 'test'

require 'test/unit'
require 'rack/test'

class HelloWorldTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_says_hello_world
    get '/'
    assert last_response.ok?
    assert_equal 'Hello World'.length.to_s, last_response.headers['Content-Length']
    assert_equal 'Hello World', last_response.body
  end

  def test_it_says_hello_to_a_person
    get '/', :name => 'Simon'
    assert last_response.body.include?('Simon')
  end
end

# app - 处理模拟请求的Sinatra应用程序类。
#
# last_request- Rack::MockRequest用于生成请求。
#
# last_response- Rack::MockResponse包含应用程序生成的响应信息的实例。

# 使用 Sinatra::Base子类的模块化应用程序,只需将app方法设置为返回您的特定类
# def app
#  MySinatraApp
# end
# 使用 经典风格的Sinatra 应用程序, 需要返回一个实例 Sinatra::Application
# def app
#   Sinatra::Application
# end
#使Rack::Test提供给所有的测试用例
# class Test::Unit::TestCase
#   include Rack::Test::Methods
# end