class HomeController < ApplicationController

  def index
    flash[:notice] = ""
    flash[:error] = ""
    render :layout => 'application'
  end

  def send_sms
    UserMailer.send_download_link(params[:email]).deliver
    # summer_phone_number = PhoneNumber.new(:phone_number => params[:phone_no])
    # if summer_phone_number.save
    #   phone_number = "91#{params[:phone_no]}"
    #   content = SmsContent.first.content
    #   sms_sent_count = PhoneNumber.where('phone_number = ? and DATE(created_at) = ?', params[:phone_no], Time.zone.today).count
    #   notice = ""
    #   if sms_sent_count < 3
    #     Exotel::Sms.send(:from => Settings.exotel_number, :to => phone_number, :body => content)
    #     flash = {:notice => "Thank you. You will receive an SMS with the link to download the app."}
    #   else
    #     flash = {:notice => "We already sent you an SMS. Try Tomorrow!"}
    #   end
    #   flash = {:error => ""}
    #   # render :action => "index", :notice=> flash[:notice]
    #   redirect_to root_path, :flash => flash
    # else
    #   flash[:notice] = ""
    #   flash[:error] = summer_phone_number.errors.messages[:phone_number]
    #   render :action => "index", :error => flash[:error]
    # end
    flash = {:notice => "Thank you. You will receive an email with the link to download the app."}
    render :action => "index", :error => flash[:error]
  end

end
