# frozen_string_literal: true

RSpec.describe AppName do
  let(:html) { last_response.body }

  describe "homepage" do
    let(:endpoint) { "/" }

    it "returns the home page" do
      get endpoint

      expect(last_response).to be_ok
      expect(html).to include("Hello World!")
    end
  end

  describe "ping" do
    let(:endpoint) { "/ping" }

    it "returns a 200 status with no body" do
      get endpoint

      expect(last_response).to be_ok
      expect(html).to be_empty
    end
  end

  describe "not found" do
    let(:endpoint) { "/non-existent" }

    it "returns a 404 page" do
      get endpoint

      expect(last_response).to be_not_found
      expect(html).to include("The page you're looking for doesn't exist")
    end
  end
end
