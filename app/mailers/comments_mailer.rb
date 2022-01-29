class CommentsMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comments_mailer.submitted.subject
  #
  def submitted(comment)
    @comment = comment

    mail to: ENV['ADMIN_EMAIL'], subject: 'New comment on the site'
  end
end
