require 'rails_helper'

RSpec.describe "Master::Tasks", type: :request do
  describe "GET /master_tasks" do
    it "works! (now write some real specs)" do
      get master_tasks_path
      expect(response).to have_http_status(200)
    end
  end
end
