class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :publication_date
      t.string :code
      t.string :genre
      t.boolean :tradable
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
