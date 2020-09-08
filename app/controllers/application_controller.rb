class ApplicationController < ActionController::Base
    def hello
        render html: "This is Giang's app"
    end
end
