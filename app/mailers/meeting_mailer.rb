class MeetingMailer < ActionMailer::Base
  default from: "mourad@risen.be"

  def invite(meeting)
    @meeting = meeting
    mail to: meeting.friend.emails, subject: "#{meeting.trip.name} wants to meet up"
  end
end
