module Form
  class Venue < BaseForm

    attribute :address, String
    attribute :room_name, String
    attribute :level, String

    def venue_name
      "#{room_name}  #{leve} "
    end
  end
end