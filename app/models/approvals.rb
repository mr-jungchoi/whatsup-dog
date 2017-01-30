class Approvals < ActiveRecord::Base
  belongs_to :approved_dog, class_name: "Dogs"
  has_one :approving_dog, class_name: "Dogs"

end
