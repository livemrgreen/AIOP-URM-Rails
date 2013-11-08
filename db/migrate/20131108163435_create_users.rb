class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :teacher
      t.boolean :admin
      t.string :salt
      t.string :token
      t.date :created_at
      t.date :updated_at

      t.timestamps
    end
  end
end
