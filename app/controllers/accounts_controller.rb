class AccountsController < ApplicationController

  def new
    team = Team.find(params[:team_id])
    @account = team.accounts.build
  end

  def create
    team = Team.find(params[:team_id])
    @account = team.accounts.build(params[:account])
   
    if @account.save
      redirect_to omniauth_twitter_url(@account.username)
    else
      render :new
    end
  end

end
