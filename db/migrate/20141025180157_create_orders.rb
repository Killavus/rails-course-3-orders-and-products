class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :notes
      t.string :city
      t.string :street
      t.string :apartament

      t.timestamps
    end
  end
end
