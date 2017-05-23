class Wine < ApplicationRecord
  # Direct associations

  has_many   :my_wines,
  :dependent => :destroy

  has_many :bucket_list_wines, :class_name => "BucketListWine", :foreign_key=> "wine_id"

  # Indirect associations

  # Validations
  #Wine Name Can't be blank; must be unique in combination with year
  validates :name, :presence => true, :uniqueness => { :scope => :year}

  #Year can't be blank
  validates :year, :presence => true

  #Price Can't be blank
  validates :price, :presence => true
  #Winery can't be blank
  validates :winery, :presence => true
  #

end
