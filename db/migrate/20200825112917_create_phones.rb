class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.string :phone_number
      t.text :comment
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
