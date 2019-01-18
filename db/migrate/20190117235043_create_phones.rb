class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :number
      t.string :manufacturer

      t.timestamps
    end
  end
end
