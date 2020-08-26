class Person < ApplicationRecord
    has_many :addresses
    has_many :phones
    has_many :emails

end
