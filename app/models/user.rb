class User < ApplicationRecord
  # Direct associations

  has_many   :my_wines,
  :dependent => :nullify

  


  has_many :bucket_list_wines, :class_name => "BucketListWine", :foreign_key=> "user_id", :dependent => :nullify



  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
end
