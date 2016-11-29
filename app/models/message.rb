class Message < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :event

  # Indirect associations

  # Validations

end
