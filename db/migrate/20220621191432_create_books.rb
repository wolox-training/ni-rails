class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :genre, :null => false
      t.string :author, :null => false
      t.string :image, :null => false
      t.string :tittle, :null => false
      t.string :editor, :null => false
      t.string :year, :null => false

      t.timestamps
    end
  end
end
