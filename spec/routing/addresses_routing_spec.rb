require "rails_helper"

RSpec.describe AddressesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/people/1/addresses").to route_to("addresses#index", person_id: "1")
    end

    it "routes to #new" do
      expect(get: "/people/1/addresses/new").to route_to("addresses#new", person_id: "1")
    end

    it "routes to #show" do
      expect(get: "/people/1/addresses/1").to route_to("addresses#show", person_id: "1", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/people/1/addresses/1/edit").to route_to("addresses#edit", person_id: "1", id: "1")
    end


    it "routes to #create" do
      expect(post: "/people/1/addresses").to route_to("addresses#create", person_id: "1")
    end

    it "routes to #update via PUT" do
      expect(put: "/people/1/addresses/1").to route_to("addresses#update", person_id: "1", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/people/1/addresses/1").to route_to("addresses#update", person_id: "1", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/people/1/addresses/1").to route_to("addresses#destroy", person_id: "1", id: "1")
    end
  end
end
