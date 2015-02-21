class CreateGuns < ActiveRecord::Migration
  def change
    create_table :guns do |t|
      t.string :name
      t.string :manufacturer
      t.float :caliber

      t.timestamps null: false
    end
  end
end
