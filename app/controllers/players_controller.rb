class PlayersController < ApplicationController
  def index
    @team = Team.find(params[:team_id])
    @players = @team.players
    render json: @players
  end

  def create
    @team = Team.find(params[:team_id])
    @player = @team.players.new(player_params)
    if @player.save
      render json: @player, status: :created
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  private

  def player_params
    params.require(:player).permit(:name, :position, :passing_yards, :rushing_yards, :touchdowns)
  end
end
