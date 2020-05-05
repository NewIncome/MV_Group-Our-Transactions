class TransactionsController < ApplicationController
  before_action :logged_in?, only: %i[new create show index]

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
    @transactions = Transaction.all.order('created_at DESC')
  end

  def no_grp
    @transactions = Transaction.where(:group_id => nil).order('created_at DESC')
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name,
                                        :description,
                                        :amount,
                                        :group_id)
  end
end
