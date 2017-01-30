class Parks < ActiveRecord::Base
  has_many :users
  has_many :dogs, through: :users
  has_many :walks

end
