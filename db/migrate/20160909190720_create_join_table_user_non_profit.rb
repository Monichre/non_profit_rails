class CreateJoinTableUserNonProfit < ActiveRecord::Migration[5.0]
  def change
    create_join_table :non_profits, :users do |t|
      # t.index [:user_id, :non_profit_id]
      # t.index [:non_profit_id, :user_id]
      t.column :user_id, :integer
      t.column :non_profit_id, :integer
    end
  end
end
