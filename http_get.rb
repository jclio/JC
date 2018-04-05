require "net/http"
require "uri"

url =URI.parse("http://dev.dopware.tech/login")
http = Net::HTTP.start(url.host, url.port)
doc = http.get(url.path)
puts doc

p url.scheme
p url.host
p url.port
p url.path
p url.to_s