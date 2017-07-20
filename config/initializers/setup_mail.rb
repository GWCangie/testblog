if Rails.env.development?
 #apikey=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
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {

    address: 'smtp.sengrid.net',
    port:     '587',
    authentication: :plain,
    user_name: ENV['SENGRID_USERNAME'],
    password:  ENV['SENGRID_PASSWORD'],
    domain:    'heroku.com',
    enable_starttls_auto: true
  }
end