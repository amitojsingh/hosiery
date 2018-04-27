require 'rails_helper'

RSpec.describe "Master::Yarns", type: :request do
  describe "GET /master_yarns" do
    it "works! (now write some real specs)" do
      get master_yarns_path
      expect(response).to have_http_status(200)
    end
  end
end
