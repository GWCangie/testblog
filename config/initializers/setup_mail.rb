if Rails.env.development?
 #au5
  ActionMailer::Base.default_url_options = { host: 'https://sheltered-temple-59820.herokuapp.com'}
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {

    address: 'smtp.sengrid.net',
    port:     '587',
    authentication: :plain,
    user_name: ENV['SENDGRID_USERNAME'],
    password:  ENV['SENDGRID_PASSWORD'],
    domain:    'heroku.com',
    enable_starttls_auto: true
  }
end