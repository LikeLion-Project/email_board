require 'mailgun'
class HomeController < ApplicationController
  def index
  end
  
  def write
    
    @email = params[:email]
    @title = params[:title]
    @content = params[:content]
    
    mg_client = Mailgun::Client.new("key-7c01232578d55b7cc10a70bf6b9cd54e")

    message_params =  {
                       from: 'jwchoi0129@gmail.com',
                       to:   @email,
                       subject: @title,
                       text:    @content
                      }
    
    result = mg_client.send_message('sandbox7ed8e5b58f5a401093943a3e8bb4a004.mailgun.org', message_params).to_h!
    
    message_id = result['id']
    message = result['message']    
  end
end
