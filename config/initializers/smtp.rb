# config/initializers/smtp.rb
ActionMailer::Base.smtp_settings = {
  address: "smtp.yahoo.com",
  port: 587,
  domain: 'yahoo.com',
  user_name: ENV['YAHOO_ADDRESS'],
  password: ENV['YAHOO_APP_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true
}
