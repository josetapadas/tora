module Tora
    class ErrorController < Tora::Controller
        def exception
            raise "Tora Exception!"
        end
    end
end
