require_relative "test_helper"

class TestApp < Tora::Application
end

describe Tora::Application do
    include Rack::Test::Methods
    
    def app
        TestApp.new
    end

    it "gets the homepage" do
        get "/"
        assert last_response.ok?
        body = last_response.body
        assert body["Welcome to Tora!"]
    end
end
  