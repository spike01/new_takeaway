require 'rubygems'
require 'twilio-ruby'

module Twilio

  def send_message(confirmation)
account_sid = 'AC3e1c9d914b8d380e6b340f32fe1b0b28'
auth_token = 'ef9fd2a0b585de4ce07ab61c092fb7f5'
@client = Twilio::REST::Client.new account_sid, auth_token

@client.account.messages.create(body: confirmation,
                                          to: "+447941302825",
                                          from: "+442838022012")
return "Message sent"
  end
end
