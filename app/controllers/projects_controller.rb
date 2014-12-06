class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    #@project.owner = current_user

    if @project.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @project.update_attributes(project_params)
      redirect_to project_path(@project)
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])  
    @project.destroy
    redirect_to projects_path
  end

  private 
  def project_params
    params.require(:project).permit(:name, :description, :start_date, :end_date, :funding_goal)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
