class PledgesController < ApplicationController
  def create
    @pledge = Pledge.new(pledge_params)
    @pledge.backer_id = current_user.id
    # @project = @pledge.project

    if @pledge.save
      redirect_to projects_path
    else
      render '/'
    end

  end




  def destroy
    @pledge.find(params[:id])
    @pledge.destroy
  end

  private

  def pledge_params
    pledge_params = params.require(:pledge).permit(:contribution, :reward_id, :project_id)
  end

end
