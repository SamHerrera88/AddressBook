require 'rails_helper'

RSpec.describe Person, type: :model do
  describe "associations" do
    it { should have_many(:addresses) }
    it { should have_many(:emails) }
    it { should have_many(:phones) }
  end

  describe "associations" do
    it { should have_many(:addresses) }
    it { should have_many(:emails) }
    it { should have_many(:phones) }
  end
end
