class User < ApplicationRecord
  # Direct associations

  has_many   :invite_lists,
             :foreign_key => "invitee_id",
             :dependent => :destroy

  has_many   :events,
             :foreign_key => "host_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
