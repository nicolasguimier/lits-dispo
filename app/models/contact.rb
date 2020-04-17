class Contact < MailForm::Base
  attribute :name, :message, validate: true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: ENV["EMAIL_SUBJECT"],
      to: ENV["EMAIL_TO"],
      from: %("#{name}" <#{email}>)
    }
  end
end
