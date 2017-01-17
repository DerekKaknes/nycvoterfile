require './config/environment'

class ApplicationController < Sinatra::Base
  include Sinatra::SessionHelper
  configure do
    set :public_folder, '/public'
    set :static, true
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end

  get '/score' do
    lastname = params[:lastname].upcase
    voter = Rawvoter.find_by(dob: params[:dob], lastname: lastname)
    if voter
      voter.name_and_scores.to_json
    else
      Rawvoter.not_found_message.to_json
    end
  end

  get '/info' do
    lastname = params[:lastname].upcase
    voter = Rawvoter.find_by(dob: params[:dob], lastname: lastname)
    if voter
      voter.status_info.to_json
    else
      Rawvoter.not_found_message.to_json
    end
  end

end
