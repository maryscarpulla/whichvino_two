class Wine < ApplicationRecord
  # Direct associations

  has_many   :my_wines,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
