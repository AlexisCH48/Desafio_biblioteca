class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :state, :default => 0
      t.date :borrowed_at
      t.date :return_at

      t.timestamps
    end
  end
end
