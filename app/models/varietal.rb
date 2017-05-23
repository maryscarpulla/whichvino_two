class Varietal < ApplicationRecord

validates :varietal_name, :presence => true, :uniqueness => true

has_many :wines, :class_name => "Wine", :foreign_key=> "varietal_id"
end
