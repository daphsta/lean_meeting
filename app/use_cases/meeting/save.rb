module Meeting
  class Save
    attr_reader :form, :current_user

    def initialize(form, current_user)
      @form, @current_user = form, @current_user
    end

    def run!
      validate!

      meeting             = Meeting.new
      meeting.title       = form.title
      meeting.description = form.description
      meeting.venue       = form.venue.venue_name
      meeting.organiser   = form.organiser.id

      meeting.save!

      meeting
    end

    private

    def validate!
      form.validate!
    end

    def organiser
      @organiser = UserRole.where(people_id: current_user.id, user_type_id: 1).first
    end

  end
end