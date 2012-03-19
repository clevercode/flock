class Membership < ActiveRecord::Base
  attr_protected :admin

  # Associations
  
  belongs_to :user
  belongs_to :team

end
