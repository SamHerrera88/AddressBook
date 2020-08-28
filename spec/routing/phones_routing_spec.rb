require "rails_helper"

RSpec.describe PhonesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/people/1/phones").to route_to("phones#index", person_id: "1")
    end

    it "routes to #new" do
      expect(get: "/people/1/phones/new").to route_to("phones#new", person_id: "1")
    end

    it "routes to #show" do
      expect(get: "/people/1/phones/1").to route_to("phones#show", person_id: "1", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/people/1/phones/1/edit").to route_to("phones#edit", person_id: "1", id: "1")
    end


    it "routes to #create" do
      expect(post: "/people/1/phones").to route_to("phones#create", person_id: "1")
    end

    it "routes to #update via PUT" do
      expect(put: "/people/1/phones/1").to route_to("phones#update", person_id: "1", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/people/1/phones/1").to route_to("phones#update", person_id: "1", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/people/1/phones/1").to route_to("phones#destroy", person_id: "1", id: "1")
    end
  end
end
