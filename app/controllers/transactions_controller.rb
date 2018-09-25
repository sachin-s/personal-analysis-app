class TransactionsController < ApplicationController
    before_action :authenticate_user!
    def index
        @transactions = Transaction.all
        @credit_data = @transactions.map{
            |transaction|
        [transaction.amount] if transaction.transaction_type.to_s.eql?("credit")
    }.compact
        @credit_data = @credit_data.each_with_index.map{
            |tran,ind| ["T#{ind}",tran]
        }
        @debit_data = @transactions.map{
            |transaction|
        [transaction.amount] if transaction.transaction_type.to_s.eql?("debit")
        }.compact
        @debit_data = @debit_data.each_with_index.map{
            |tran,ind| ["T#{ind}",tran]
        }
    end

    def new
        unless Transaction.last.nil?
          @transaction_amount = Transaction.last.total_balance
        else
            @transaction_amount = 0
        end
    end
    
    def create
        @transaction = Transaction.new(post_params)

        if @transaction.save
            redirect_to @transaction
        else
            render plain: 'Unable to store transaction in the database'
        end

    end

    def show
        @transaction = Transaction.find(params[:id])

    end

    def edit

    end
    
    def destroy
        @transaction = Transaction.find(params[:id])
        @transaction.destroy

        redirect_to transactions_path
    end

    private def post_params
        params.require(:post).permit(:transaction_type,:amount,:date_of_transaction,:total_balance,:transaction_account,:comments)
    end

end
