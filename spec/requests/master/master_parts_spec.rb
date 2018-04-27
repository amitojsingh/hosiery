require 'rails_helper'

RSpec.describe "Master::Parts", type: :request do
  describe "GET /master_parts" do
    it "works! (now write some real specs)" do
      get master_parts_path
      expect(response).to have_http_status(200)
    end
  end
end
