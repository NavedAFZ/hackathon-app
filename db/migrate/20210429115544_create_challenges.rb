class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :description
      t.string :tags

      t.timestamps
    end
  end
end
