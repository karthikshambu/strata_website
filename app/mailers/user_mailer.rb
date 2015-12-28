class UserMailer < ActionMailer::Base
  default from: "karthik.shanmugam@strata.co.in"

  def send_download_link(email)
    mail to: email, subject: "FirstMyle - Neighborhood in your palm!"
  end

end
