require 'rails_helper'

RSpec.describe "DrillTypes", type: :request do
  describe "GET /drill_types" do
    it "works! (now write some real specs)" do
      get drill_types_path
      expect(response).to have_http_status(200)
    end
  end
end
