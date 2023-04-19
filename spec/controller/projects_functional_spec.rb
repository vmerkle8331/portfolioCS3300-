require "rails_helper"
RSpec.describe ProjectsController, :type => :controller do
    
    # Add this
    login_user

    let(:valid_attributes) {
        { :title => "Test title!", :description => "This is a test description", :status => "draft" }
    }
    
    let(:valid_session) { {} }
    
    describe "test web requests" do
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
            end
        end
        context "GET #show" do
            let!(:project) { Project.create(title: "Test title", description: "Test description") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end
    end
end