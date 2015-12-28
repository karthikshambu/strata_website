require 'development_mail_interceptor'
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "info@firstmyle.com",
  :password             => "f1rstmy!e",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
# ActionMailer::Base.register_interceptor(CorporateMailInterceptor) if Rails.env.production?