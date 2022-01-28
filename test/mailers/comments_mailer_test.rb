require "test_helper"

class CommentsMailerTest < ActionMailer::TestCase
  test "submitted" do
    mail = CommentsMailer.submitted comments(:one)
    assert_equal "New comment on the site", mail.subject
    assert_match "comment", mail.body.encoded
  end

end
