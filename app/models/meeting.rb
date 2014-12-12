class Meeting < ActiveRecord::Base
  belongs_to :venue
  belongs_to :organiser
end
