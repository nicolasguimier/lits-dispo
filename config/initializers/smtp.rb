ActionMailer::Base.smtp_settings = {
  address: "ssl0.ovh.net",
  port: '587',
  # tls: true,
  user_name: ENV['SMTP_ADDRESS'],
  password: ENV['SMTP_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true
}
