class FixTokenColumnName < ActiveRecord::Migration
  def change
  	rename_column :users, :remember_token, :bearer_token
  end
end
