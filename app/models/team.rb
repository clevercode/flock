class Team < ActiveRecord::Base
  attr_accessible :name

  # Associations
  
  has_many :accounts,
           :dependent => :destroy

  has_many :memberships,
           :inverse_of => :team,
           :dependent => :destroy

  has_many :users, 
           :through => :memberships 

  # Validations 

  validates :name, presence: true

end
