class InviteList < ApplicationRecord
  # Direct associations

  belongs_to :invitee,
             :class_name => "User"

  belongs_to :event

  # Indirect associations

  # Validations

end
