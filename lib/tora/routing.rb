# frozen_string_literal: true

require "tora/controller"

module Tora
    class Application
        # this function will compose a magical name for the class of the component ant will try to instantiate
        # the object that has that name and returns which action it should respond to. this is obtained via the
        # part of the route we obtain
        def get_controller_and_action(env)

            if env["PATH_INFO"] == '/'
                controller_name = 'Home'
                action = 'index'
            else
                _, controller_name, action, after = env["PATH_INFO"].split("/", 4)
            end

            controller_name = controller_name.capitalize + "Controller"

            [Object.const_get(controller_name), action]
        end
    end
end
