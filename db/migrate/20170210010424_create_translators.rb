class CreateTranslators < ActiveRecord::Migration[5.0]
  def change
    create_table :translators do |t|
      t.string :name

      t.timestamps
    end
  end
end
