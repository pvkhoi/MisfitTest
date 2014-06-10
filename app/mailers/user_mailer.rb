class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def send_result_email(subject_email, user_name, user_email, result)
    to_email = "khoi@misfit.com"
    #to_email = "pvkhoi@apcs.vn"
    @subject_email = subject_email
    @user_name =  user_name
    @user_email = user_email
    @result = result

    mail(:from => "info@misfit.com", :reply_to => "info@misfit.com", :to => to_email, :subject => subject_email)

  end
end
