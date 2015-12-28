class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.subject = "#{message.subject}"
    message.to = "#{message.to.first}"
    message.cc = ""
  end
end