class ApplicationController < ActionController::Base
    def home
         render html: "This is home page"
    end
    def hello
        render html: "This is Giang's app"
    end
end
