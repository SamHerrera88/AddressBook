class AddMissingIndexForEmail < ActiveRecord::Migration[6.0]
  def change
    add_reference :emails, :person, index: true
  end
end
