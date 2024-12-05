class BlocksController < ApplicationController

  before_action :find_project, :authorize, except: [:edit_home]
  before_action :require_admin, only: [:edit_home]

  def edit_overview
    @current_blocks = OverviewBlock.where(project_id: @project.id).pluck(:name)

    if request.post?
      blocks = params[:blocks] || []
      to_remove = @current_blocks - blocks
      OverviewBlock.where(project_id: @project.id, name: to_remove).destroy_all

      to_add = blocks - @current_blocks
      to_add.each do |block|
        OverviewBlock.create!(project_id: @project.id, name: block)
      end

      redirect_to controller: 'projects', action: 'show', id: @project
    end
  end

  def edit_home
    @current_blocks = HomeBlock.pluck(:name)

    if request.post?
      blocks = params[:blocks] || []
      to_remove = @current_blocks - blocks
      HomeBlock.where(name: to_remove).destroy_all

      to_add = blocks - @current_blocks
      to_add.each do |block|
        HomeBlock.create!(name: block)
      end

      redirect_to home_url
    end
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end
end