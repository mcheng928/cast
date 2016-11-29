class Event < ApplicationRecord
  # Direct associations

  has_many   :venue_options,
             :class_name => "VotingBoard",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
