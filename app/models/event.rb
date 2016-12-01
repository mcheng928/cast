class Event < ApplicationRecord
  # Direct associations

  belongs_to :host,
             :class_name => "User"

  has_many   :invite_lists,
             :dependent => :destroy

  has_many   :venue_options,
             :class_name => "VotingBoard",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
