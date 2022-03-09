class SmsController < ApplicationController
  def show; end

  def send_sms
    number = params[:number]
    message = params[:message]
    client = Vonage::Client.new(api_key: ENV['VONAGE_API_KEY'], api_secret: ENV['VONAGE_API_SECRET'])

    client.sms.send(from: 'Vonage', to: number, text: message)

    redirect_to '/sms', notice: "Your message was sent"
  end
end
