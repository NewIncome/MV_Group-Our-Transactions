class TransactionsController < ApplicationController
  before_action :logged_in_user, only: %i[new create show index]

  def new
    @transaction = Transaction.new
    @groups = Group.all.collect { |group| [group.name, group.id] }
  end

  def create
    @transaction = current_user.transactions.build(transaction_params)
    if @transaction.save
      flash[:success] = "#{@transaction.name} transaction successfully created"
      redirect_to @transaction
    else
      render 'new'
    end
  end

  def show
    @transaction = Transaction.find_by(id: params[:id])
  end

  def index
    @transactions = Transaction.where(user_id: current_user.id).order('created_at DESC')
  end

  def no_grp
    @transactions = current_user.transactions.includes(:group).where("group_id IS ? OR group_id IS ?", nil, 0).includes(:group).order('created_at DESC')
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name,
                                        :description,
                                        :amount,
                                        :group_id)
  end
end
