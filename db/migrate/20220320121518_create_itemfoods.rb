class CreateItemfoods < ActiveRecord::Migration[7.0]
  def change
    create_table :itemfoods do |t|
      t.string :name
      t.string :calories
      t.string :servingquantity

      t.timestamps
    end
  end
end
