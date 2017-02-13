class Walk < ActiveRecord::Base
  belongs_to :park
  belongs_to :requesting_dog, class_name: "Dogs"
  belongs_to :requested_dog, class_name: "Dogs"

end
