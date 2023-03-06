class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.references :user, null: false, foreign_key: true
      t.references :dilemma, null: false, foreign_key: true
      t.string :answered_a
      t.string :answered_b
      t.string :winner

      t.timestamps
    end
  end
end
