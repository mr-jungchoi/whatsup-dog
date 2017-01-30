class Users < ActiveRecord::Base
  has_many :dogs
  belongs_to :park
  has_many :walks, through: :dogs

end
