class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.string :title
      t.string :description
      t.string :score

      t.timestamps
    end
  end
end
