require 'rails_helper'

RSpec.describe "Api::UsersByEmails", type: :request do
  describe "GET show" do
    let(:headers) do
      {'ACCEPT' => 'application/json'}
    end

    context "user exists" do
      it "is successful" do
        user = create(:user)
        get api_user_by_email_path, params: { email: user.email }, headers: headers
        expect(response).to be_successful
      end
    end

    context "user does not exists" do
      it "is not found" do
        get api_user_by_email_path, params: { email: "junk@example.com"}, headers: headers
        expect(response.status).to eq 404
      end
    end
  end
end