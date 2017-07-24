class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.string :name
      t.text :content
      t.integer :post_id

      t.timestamps
    end
  end
end
