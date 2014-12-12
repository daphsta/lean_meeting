require 'forms/venue'
require 'forms/organiser'

module Form
  class Meeting < BaseForm

    attribute :title, String
    attribute :description, String
    attribute :meeting_time, Time
    attribute :venue, Venue
    attribute :organiser, User


    def valid?
      super && venue.valid? && organiser.valid?
    end

    def save
      begin
        Meeting::Save.new(self).run!
        true
      rescue ValidationError
        false
      end
    end


  end
end