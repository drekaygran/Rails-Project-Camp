require 'rails_helper'

RSpec.describe "Campers", type: :request do
  describe "GET /campers" do
    it "works! (now write some real specs)" do
      get campers_path
      expect(response).to have_http_status(200)
    end
  end
end
