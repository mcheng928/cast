class Event < ApplicationRecord
  # Direct associations

  has_many   :messages,
             :dependent => :destroy

  has_many   :venue_options,
             :class_name => "VotingBoard",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
