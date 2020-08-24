class MessageMailer < ApplicationMailer
  def contact_me(message)
    @body = message.body
    @first_name = message.first_name
    @last_name = message.last_name
    @email = message.email
    @subject = message.subject

    mail to: "benoit.calin@gmail.com", from: "contact@bencal.fr", subject: message.subject
  end
end
