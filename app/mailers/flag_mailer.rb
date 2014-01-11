class FlagMailer < ActionMailer::Base
  default from: "from@example.com"

  def flag_email(steppy)
  	@steppy = steppy
  	@admin = "eduard.y.popov@gmail.com"
    mail(to: @admin, subject: @steppy.id)
  end
end
