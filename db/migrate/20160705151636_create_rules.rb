class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :param
      t.integer :treshold
      t.text :users

      t.timestamps null: false
    end
  end
end
