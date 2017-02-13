class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.string :title
      t.references :work, foreign_key: true
      t.references :author, foreign_key: true
      t.string :isbn
      t.string :oclc
      t.string :edition
      t.references :translator, foreign_key: true
      t.references :language, foreign_key: true
      t.boolean :is_prose
      t.boolean :is_poetry
      t.integer :publication_year
      t.references :collection
      t.text :notes
      t.references :medium, foreign_key: true

      t.timestamps
    end
  end
end
