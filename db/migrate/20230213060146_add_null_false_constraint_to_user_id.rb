class AddNullFalseConstraintToUserId < ActiveRecord::Migration[7.0]
  def change
    change_column :properties, :user_id, :bigint, null: false
  end
end
