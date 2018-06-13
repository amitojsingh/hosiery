require 'rails_helper'

RSpec.describe "Manufacturing::Knittings", type: :request do
  describe "GET /manufacturing_knittings" do
    it "works! (now write some real specs)" do
      get manufacturing_knittings_path
      expect(response).to have_http_status(200)
    end
  end
end
