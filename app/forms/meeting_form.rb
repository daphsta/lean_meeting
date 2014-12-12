require 'forms/venue'
require 'forms/organiser'

module Form
  class Meeting < BaseForm

    attribute :title, String
    attribute :description, String
    attribute :meeting_time, Time
    attribute :venue, Venue
    attribute :organiser, User

    def save!
      Meeting.save!()
    end


  end
end