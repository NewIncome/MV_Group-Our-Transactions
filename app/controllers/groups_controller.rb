class GroupsController < ApplicationController
  include GroupsHelper
  before_action :logged_in_user, only: %i[new create index show]

  def new
    @icons = icons
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      flash[:success] = "'#{@group.name}' group created successfully!"
      redirect_to @group
    else
      @icons = icons
      render 'new'
    end
  end

  def index
    @groups = Group.all.order('name')
  end

  def show
    @group = Group.find_by(id: params[:id])
    @transactions = Transaction.includes(:group, :user).where(group_id: @group.id).order('created_at DESC')
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
