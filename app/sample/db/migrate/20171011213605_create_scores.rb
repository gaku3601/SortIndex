class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.string :name
      t.string :title
      t.integer :result

      t.timestamps
    end
  end
end
