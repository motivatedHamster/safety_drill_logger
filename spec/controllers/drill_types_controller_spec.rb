require 'rails_helper'

# DrillTypes are created and edited within the Classrooms controller
# I think this testing should be done there?

RSpec.describe DrillTypesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # DrillType. As you add validations to DrillType, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { name: "validName", required_frequency: "monthly" }
  }

  let(:invalid_attributes) {
    { name: "validName", required_frequency: "hourly" }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DrillTypesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

#  describe "GET #index" do
#    it "assigns all drill_types as @drill_types" do
#      drill_type = DrillType.create! valid_attributes
#      get :index, {}, valid_session
#      expect(assigns(:drill_types)).to eq([drill_type])
#    end
#  end

#  describe "GET #show" do
#    it "assigns the requested drill_type as @drill_type" do
#      drill_type = DrillType.create! valid_attributes
#      get :show, {:id => drill_type.to_param}, valid_session
#      expect(assigns(:drill_type)).to eq(drill_type)
#    end
#  end

#  describe "GET #new" do
#    it "assigns a new drill_type as @drill_type" do
#      get :new, {}, valid_session
#      expect(assigns(:drill_type)).to be_a_new(DrillType)
#    end
#  end

#  describe "GET #edit" do
#    it "assigns the requested drill_type as @drill_type" do
#      drill_type = DrillType.create! valid_attributes
#      get :edit, {:id => drill_type.to_param}, valid_session
#      expect(assigns(:drill_type)).to eq(drill_type)
#    end
#  end

#  describe "POST #create" do
#    context "with valid params" do
#      it "creates a new DrillType" do
#        expect {
#          post :create, {:drill_type => valid_attributes}, valid_session
#        }.to change(DrillType, :count).by(1)
#      end

#      it "assigns a newly created drill_type as @drill_type" do
#        post :create, {:drill_type => valid_attributes}, valid_session
#        expect(assigns(:drill_type)).to be_a(DrillType)
#        expect(assigns(:drill_type)).to be_persisted
#      end

#      it "redirects to the created drill_type" do
#        post :create, {:drill_type => valid_attributes}, valid_session
#        expect(response).to redirect_to(DrillType.last)
#      end
#    end

#    context "with invalid params" do
#      it "assigns a newly created but unsaved drill_type as @drill_type" do
#        post :create, {:drill_type => invalid_attributes}, valid_session
#        expect(assigns(:drill_type)).to be_a_new(DrillType)
#      end

#      it "re-renders the 'new' template" do
#        post :create, {:drill_type => invalid_attributes}, valid_session
#        expect(response).to render_template("new")
#      end
#    end
#  end

#  describe "PUT #update" do
#    context "with valid params" do
#      let(:new_attributes) {
#        skip("Add a hash of attributes valid for your model")
#      }

#      it "updates the requested drill_type" do
#        drill_type = DrillType.create! valid_attributes
#        put :update, {:id => drill_type.to_param, :drill_type => new_attributes}, valid_session
#        drill_type.reload
#        skip("Add assertions for updated state")
#      end

#      it "assigns the requested drill_type as @drill_type" do
#        drill_type = DrillType.create! valid_attributes
#        put :update, {:id => drill_type.to_param, :drill_type => valid_attributes}, valid_session
#        expect(assigns(:drill_type)).to eq(drill_type)
#      end

#      it "redirects to the drill_type" do
#        drill_type = DrillType.create! valid_attributes
#        put :update, {:id => drill_type.to_param, :drill_type => valid_attributes}, valid_session
#        expect(response).to redirect_to(drill_type)
#      end
#    end

#    context "with invalid params" do
#      it "assigns the drill_type as @drill_type" do
#        drill_type = DrillType.create! valid_attributes
#        put :update, {:id => drill_type.to_param, :drill_type => invalid_attributes}, valid_session
#        expect(assigns(:drill_type)).to eq(drill_type)
#      end

#      it "re-renders the 'edit' template" do
#        drill_type = DrillType.create! valid_attributes
#        put :update, {:id => drill_type.to_param, :drill_type => invalid_attributes}, valid_session
#        expect(response).to render_template("edit")
#      end
#    end
#  end

#  describe "DELETE #destroy" do
#    it "destroys the requested drill_type" do
#      drill_type = DrillType.create! valid_attributes
#      expect {
#        delete :destroy, {:id => drill_type.to_param}, valid_session
#      }.to change(DrillType, :count).by(-1)
#    end

#    it "redirects to the drill_types list" do
#      drill_type = DrillType.create! valid_attributes
#      delete :destroy, {:id => drill_type.to_param}, valid_session
#      expect(response).to redirect_to(drill_types_url)
#    end
#  end

end
