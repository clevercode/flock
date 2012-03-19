class Account < ActiveRecord::Base

  attr_accessible :username

  # Associations
  
  belongs_to :team

  def token
    self[:acces_token].split(':').first
  end

  def secret
    self[:acces_token].split(':').last
  end

  def state
    access_token? ? 'authenticated' : 'unauthenticated'
  end


  # Updates the account with details from the OmniAuth auth hash.
  # @param omniauth_hash [Hash] - see https://github.com/intridea/omniauth/wiki/Auth-Hash-Schema
  def update_omniauth(auth_hash)
    token = auth_hash['credentials']['token']
    secret = auth_hash['credentials']['secret']
    self.access_token = '%s:%s' % [token, secret]

    self.save(validate: false)
  end

end
