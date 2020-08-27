class Person < ApplicationRecord
    has_many :addresses
    has_many :phones
    has_many :emails

    validates :first_name, :last_name, presence: true

end
