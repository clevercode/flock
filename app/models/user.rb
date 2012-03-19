class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable

  # Associations

  has_many :memberships,
           :inverse_of => :user,
           :dependent => :destroy

  has_many :teams,
           :through => :memberships

  # Validations

  validate :email, uniqueness: true

end
