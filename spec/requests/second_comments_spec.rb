require 'rails_helper'

RSpec.describe "SecondComments", type: :request do
  describe "GET /second_comments" do
    it "works! (now write some real specs)" do
      get second_comments_path
      expect(response).to have_http_status(200)
    end
  end
end
