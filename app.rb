require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        p1 = PigLatinizer.new
        @pigged = p1.piglatinize(params[:user_phrase])
        erb :results
    end
end