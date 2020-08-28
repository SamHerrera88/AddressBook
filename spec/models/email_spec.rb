require 'rails_helper'

RSpec.describe Email, type: :model do
  describe "associations" do
    it { should belong_to(:person) }
  end

  describe "validations" do
    it { should validate_presence_of(:email_address) }
  end
end
