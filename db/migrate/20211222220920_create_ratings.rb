class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :score
      t.string :reason
      t.float :recommended_price
      t.references :dish
      t.references :user
    end
  end
end
