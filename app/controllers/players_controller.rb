class PlayersController < ApplicationController



  def create
    @team = Team.find(params[:team_id])
    @player = @team.players.create(player_params)

    redirect_to team_path(@team)
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @team = Team.find([:post_id])
    @player = @team.players.find(params[:id])
    @player.destroy

    redirect_to team_path(@team)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:name, :team_id)
    end
end
