class VotingBoard < ApplicationRecord
  # Direct associations

  belongs_to :venue

  belongs_to :event

  # Indirect associations

  # Validations

end
