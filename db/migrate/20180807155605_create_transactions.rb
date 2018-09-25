class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :transaction_type
      t.float :amount
      t.date :date_of_transaction
      t.float :total_balance
      t.string :transaction_account
      t.string :comments

      t.timestamps
    end
  end
end
