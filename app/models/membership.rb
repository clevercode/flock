class Membership < ActiveRecord::Base
  attr_protected :admin

  # Associations
  
  belongs_to :user,
             :inverse_of => :membership
  belongs_to :team,
             :inverse_of => :membership

end
