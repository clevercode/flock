class AuthenticationsController < ApplicationController

  before_filter :authenticate_user!

  def create
    account = Account.find_by_username(auth_hash['info']['nickname'])
    # if can? :update, account
      account.update_omniauth(auth_hash)
    redirect_to account.team
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
