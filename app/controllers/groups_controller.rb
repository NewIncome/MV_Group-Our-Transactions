class GroupsController < ApplicationController
  
  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      flash[:success] = "'#{@group.name}' group created successfully!"
      redirect_to @group
    else
      render 'new'
    end
  end

  def show
  end

  def index
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
