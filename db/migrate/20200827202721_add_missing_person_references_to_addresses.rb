class AddMissingPersonReferencesToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :addresses, :person, index: true
  end
end
