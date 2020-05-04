class TransactionsController < ApplicationController
  before_action :logged_in?, only: %i[new create show index]

  def new
    @transaction = Transaction.new
    @groups = Group.all.collect { |group| [group.name, group.id] }
    flash[:warning] = "This is in the @groups: #{@groups}"
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
  end

  def index
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name,
                                        :description,
                                        :amount,
                                        :group_id)
  end
end
