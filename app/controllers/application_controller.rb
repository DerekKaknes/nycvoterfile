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
    voter = Rawvoter.find_by_params(params)
    msg = {'success': true}
    msg['body'] = voter ? voter.name_and_scores : Rawvoter.not_found_message
    msg.to_json
  end

  get '/info' do
    voter = Rawvoter.find_by_params(params)
    msg = {'success': true}
    msg['body'] = voter ? voter.status_info : Rawvoter.not_found_message
    msg.to_json
  end

  not_found do
    status 404
    {'success': false, 'body': 'Resource not found.'}.to_json
  end
end
