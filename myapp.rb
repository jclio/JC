require 'sinatra'

get "/" do
  "Hello World"
end

get '/hello/:name' do
  "hello #{params['name']}"
end

get '/hello2/:name' do |n|
  "hello #{n}"
end

get '/say/*/to/*' do
  params['splat']
end

get '/download/*.*' do
  params['splat']
end

get /\/hello\/([\w])/ do
  "hello, #{params['captures'].first}"
end

# 路由可能包含各种匹配条件，例如用户代理：
get '/foo', :agent => /SongBird (\d\.\d)[\d\/]*?/ do
  "Your're using SongBird version #{params['agent'][0]}"
end

get '/', :host_name => /^admin\./ do
  "Admin area, Access denied"
end

get '/', :provides => 'html' do
  haml :index
end

get '/', :provides => ['rss','atom', 'xml'] do
  builder :feed
end

# provides 搜索请求的Accept头
set(:probability) { |value| condition { rand <= value}}


def condition
  true
end

get '/win_a_car', :probability => 0.1 do
  "you won!"
end

get '/win_a_car' do
  "Sorry you lost"
end


# 参数前加*代表可变参数
set(:auth) do |*roles|
  condition do
    unless logged_in? && roles.any? { |role| current_user.in_role?role }
      redirect "/login", 303
    end
  end
end

get '/my/account/', :auth => [:user, :admin] do
  "Your Account Details"
end

get "/only/admin/", :auth => :admin do
  "Only admins are allowed here!"
end

set :foo, 'bar'

get '/foo' do
  "foo is set to " + settings.foo
end


set :baz, proc { "hello " + foo}

set :foo => 'bar', :baz => proc {"hello " + foo}
get '/baz' do
  "baz is set to " + settings.baz
end

enable :sessions, :logging
disable :dump_errors, :some_custom_option

set :sessions, true
set :logging, true
set :dump_errors, false
set :some_custom_option, false

# 指定部署环境的符号; 通常被设置为一个 :development，:test或:production
#
# :environment - 配置/部署环境
set :environment, :production

# :sessions - 启用/禁用基于cookie的会话
set :sessions, true

# 通过将Rack::Session::Cookie 组件插入应用程序的中间件管道来实现会话。
#
# :logging - 将请求记录到日志 STDERR
# Rack::CommonLogger组件用于生成日志消息。
# :method_override- 启用/禁用POST
# :root - 应用程序的根目录
# :static - 启用/禁用静态文件路由 该目录存在:static时默认启用设置public
# :public_folder - 静态文件目录 默认情况下，这被假定为根目录中名为“public”的目录
# :views - 查看模板目录
# set :views, proc { File.join(root, "templates")}
# :run - 启用/禁用内置的Web服务器 指定应用程序完全加载后是否启动内置Web服务器
# set :run, false
# :server - 用于内置Web服务器的处理程序
# set :server, %w[thin mongrel webrick]
# :bind - 服务器主机名或IP地址
# set :bind, '0.0.0.0'
# :port - 服务器端口
# set :port, 9494
# :app_file - 主要应用程序文件
# set :app_file, __FILE__
# :dump_errors - 将异常记录回去 STDERR
# set :dump_errors, false
# :raise_errors - 允许异常在应用程序之外传播
# :lock - 通过互斥锁确保单个请求的并发性
# :show_exceptions - 启用优雅的错误页面
#

class Stream
  def each
    100.times { |i| yield "#{i}"}
  end
end


get ('/') { Stream.new}

class AllButPattern
  Match = Struct.new(:captures)

  def initialize(except)
    @except   = except
    @captures = Match.new([])
  end

  def match(str)
    @captures unless @except === str
  end
end

def all_but(pattern)
  AllButPattern.new(pattern)
end

get all_but("/index") do
  "Index"
end