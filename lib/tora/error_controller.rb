module Tora
    class ErrorController < Tora::Controller
        def error
            "<h1>Tora Runtime Error</h1>" + 
            "<p>Here follows the insight:</p>" +
            "<hr/>" +
            "<div>" +
            "<pre>#{@env.to_s.gsub('", ', '".<br>')}</pre>" +
            "</div>" +
            "<hr/>" 
        end
    end
end