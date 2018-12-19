class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :runs, :private, :is_private
  end
end
