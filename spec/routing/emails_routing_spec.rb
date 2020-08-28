require "rails_helper"

RSpec.describe EmailsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/people/1/emails").to route_to("emails#index", person_id: "1")
    end

    it "routes to #new" do
      expect(get: "/people/1/emails/new").to route_to("emails#new", person_id: "1")
    end

    it "routes to #show" do
      expect(get: "/people/1/emails/1").to route_to("emails#show", person_id: "1", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/people/1/emails/1/edit").to route_to("emails#edit", person_id: "1", id: "1")
    end


    it "routes to #create" do
      expect(post: "/people/1/emails").to route_to("emails#create", person_id: "1")
    end

    it "routes to #update via PUT" do
      expect(put: "/people/1/emails/1").to route_to("emails#update", person_id: "1", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/people/1/emails/1").to route_to("emails#update", person_id: "1", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/people/1/emails/1").to route_to("emails#destroy", person_id: "1", id: "1")
    end
  end
end
