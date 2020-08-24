class MessageMailer < ApplicationMailer
  def contact_me(message)
    @body = message.body
    @first_name = message.first_name
    @last_name = message.last_name
    @email = message.email
    @subject = message.subject

    mail to: "ecolo.sporting.club@gmail.com", from: "ecolo.sporting.club@gmail.com", subject: message.subject
  end
end
