require "net/http"
require "uri"

module TEST
  def hello
    p "hello"
  end

  module_function :hello
end

module TEST::HTTPTEST
  def login
    url = URI.parse("http://dev.dopware.tech/login/")
    http = Net::HTTP.start(url.host, url.port)
    doc = http.get(url.path)
    puts doc
  end

  module_function :login
end

TEST::HTTPTEST.login

TEST.hello


p 1 | 1
