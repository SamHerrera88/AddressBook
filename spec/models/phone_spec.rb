require 'rails_helper'

RSpec.describe Phone, type: :model do
  describe "associations" do
    it { should belong_to(:person) }
  end

  describe "validations" do
    it { should validate_presence_of(:phone_number)}
  end
end
