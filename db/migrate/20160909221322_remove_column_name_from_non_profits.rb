class RemoveColumnNameFromNonProfits < ActiveRecord::Migration[5.0]
  def change
    change_column :non_profits, :name, :string, default: "", null: false
  end
end
