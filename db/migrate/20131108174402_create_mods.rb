class CreateMods < ActiveRecord::Migration
  def change
    create_table :mods do |t|
      t.string :label
      t.integer :module_manager_id

      t.timestamps
    end
  end
end
