class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = transaction.user_id.build(transaction_params)
    if @transaction
      flash[:success] = "#{@trn.name} transaction successfully created"
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
                                        :user_id,
                                        :group_id)
  end
end
