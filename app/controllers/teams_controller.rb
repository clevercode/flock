class TeamsController < ApplicationController
  respond_to :html

  def index
    @team = current_user.teams
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = current_user.teams.create(params[:team])
    if @team.valid?
      flash[:notice] = "Hey look at that, a new team!"
      respond_with @team
    else
      flash[:notice] = "Couldn't create that team, looks like it's forever alone for you..."
      render :new
    end
  end

end
