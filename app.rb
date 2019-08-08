require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/' do
        user_input= params[:string]
        @analyzed=PigLatinizer.new(user_input)
        erb :show
    end

end