class Vocabs < ActiveRecord::Migration[5.2]
  def change
    create_table :vocabs do |t|
      t.string :russian
      t.string :english
      t.string :sentence

      t.timestamps
    end
  end
end
