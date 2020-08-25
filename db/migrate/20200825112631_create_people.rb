class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :saluation
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :ssn
      t.date :date_of_birth
      t.text :comment

      t.timestamps
    end
  end
end
