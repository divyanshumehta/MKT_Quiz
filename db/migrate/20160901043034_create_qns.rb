class CreateQns < ActiveRecord::Migration[5.0]
  def change
    create_table :qns do |t|
      t.string :question
      t.string :answer
      t.integer :lvl

      t.timestamps
    end
  end
end
