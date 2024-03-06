class CreateNumbers < ActiveRecord::Migration[7.1]
  def change
    create_table :numbers do |t|
      t.integer :val
      t.text :res

      t.timestamps
    end
  end
end
