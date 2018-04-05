
module TEST::HTTPTEST
  class CloudController
    def hello
      p "hello world"
    end
  end
end

cc = TEST::HTTPTEST::CloudController.new

cc.hello