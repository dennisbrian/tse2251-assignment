class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @projects_json = @projects.collect { |project| ProjectsSerializer.new(project) }.to_json
  end

  def show
    set_project
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
