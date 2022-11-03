# frozen_string_literal: true

require "tora/version"
require "tora/controller"
require "tora/routing"

# helper classes or modules
require "tora/error_controller"

module Tora
  class Error < StandardError; end

  class Application
    def call(env)
      begin
        controller_class, controller_action = get_controller_and_action(env)
        controller = controller_class.new(env)
        response = controller.send(controller_action)
      rescue
        controller = Tora::ErrorController.new(env)
        response = controller.send('error')
      end

      [200, { "Content-Type" => "text/html"}, [response]]
    end
  end
end
