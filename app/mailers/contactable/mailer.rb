module Contactable
  class Mailer < ActionMailer::Base

    def despatch message
      @message = message

      logo_path = 'app/assets/images/logo.png'
      attachments.inline['logo.png'] = File.read(logo_path) if File.exist?(logo_path)
      
      from = "#{@message.name} <#{@message.email}>"
      subject = t '.subject', message: @message.subject
      mail from: from, subject: subject, to: Contactable::Config.recipient
    end
  end
end