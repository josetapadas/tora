# frozen_string_literal: true

module Tora
    class Controller
        def initialize(env)
            @env = env
        end

        def env
            @env
        end
    end
end
