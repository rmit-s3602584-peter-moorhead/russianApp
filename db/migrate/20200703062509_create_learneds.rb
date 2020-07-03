class CreateLearneds < ActiveRecord::Migration[5.2]
  def change
    create_table :learneds do |t|
      t.references :user, foreign_key: true
      t.references :vocab, foreign_key: true

      t.timestamps
    end
  end
end
