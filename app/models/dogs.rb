class Dogs < ActiveRecord::Base
  belongs_to :user
  has_many :walks
  has_one :park, through: :user

end
