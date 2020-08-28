 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/addresses", type: :request do
  let(:person) { FactoryBot.create(:person) }
  # Address. As you add validations to Address, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      person_id: person.id,
    }
  }

  let(:invalid_attributes) {
    {
      person_id: nil,
    }
  }

  describe "GET /index" do
    it "renders a successful response" do
      skip("Now nested under people#show")
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      address = Address.create! valid_attributes
      get person_address_url(person, address)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_person_address_url(person)
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      address = Address.create! valid_attributes
      get edit_person_address_url(person, address)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Address" do
        expect {
          post person_addresses_url (person), params: { address: valid_attributes }
        }.to change(Address, :count).by(1)
      end

      it "redirects to the created address" do
        post person_addresses_url (person), params: { address: valid_attributes }
        expect(response).to redirect_to(person_url(person))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Address" do
        expect {
          post person_addresses_url (person), params: { address: invalid_attributes }
        }.to change(Address, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post person_addresses_url (person), params: { address: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {
          town: "Prague",
        }
      }

      it "updates the requested address" do
        address = Address.create! valid_attributes
        patch person_address_url(person, address), params: { address: new_attributes }
        address.reload
        expect(address.town).to eq("Prague")
      end

      it "redirects to the address" do
        address = Address.create! valid_attributes
        patch person_address_url(person, address), params: { address: new_attributes }
        address.reload
        expect(response).to redirect_to(person_url(person))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        address = Address.create! valid_attributes
        patch person_address_url(person, address), params: { address: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested address" do
      address = Address.create! valid_attributes
      expect {
        delete person_address_url(person, address)
      }.to change(Address, :count).by(-1)
    end

    it "redirects to the addresses list" do
      address = Address.create! valid_attributes
      delete person_address_url(address)
      expect(response).to redirect_to(person_url(person))
    end
  end
end
