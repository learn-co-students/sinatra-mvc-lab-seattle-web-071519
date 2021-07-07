require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    # post '/pitlatinize' do
    #     pl = PigLatinizer.new
    #     @piglatin = pl.piglatinize(params[:user_phrase])
    #     erb :results
    # end

    post '/piglatinize' do
        piglatin = PigLatinizer.new
        @piglatin_text = piglatin.piglatinize(params[:user_phrase])
        erb :results
    end

    


end