require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  get '/piglatinize' do
    @pig = PigLatinizer.new
    @pig_text = @pig.piglatinize(params[:user_input])

    erb :pigged
  end

end
