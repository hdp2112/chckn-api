class ChangeAmountTypeInCashflowstoInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :cashflows, :amount, :integer
  end
end
