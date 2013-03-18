# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AlternativesController do

  # This should return the minimal set of attributes required to create a valid
  # Alternative. As you add validations to Alternative, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "title" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AlternativesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all alternatives as @alternatives" do
      alternative = Alternative.create! valid_attributes
      get :index, {}, valid_session
      assigns(:alternatives).should eq([alternative])
    end
  end

  describe "GET show" do
    it "assigns the requested alternative as @alternative" do
      alternative = Alternative.create! valid_attributes
      get :show, {:id => alternative.to_param}, valid_session
      assigns(:alternative).should eq(alternative)
    end
  end

  describe "GET new" do
    it "assigns a new alternative as @alternative" do
      get :new, {}, valid_session
      assigns(:alternative).should be_a_new(Alternative)
    end
  end

  describe "GET edit" do
    it "assigns the requested alternative as @alternative" do
      alternative = Alternative.create! valid_attributes
      get :edit, {:id => alternative.to_param}, valid_session
      assigns(:alternative).should eq(alternative)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Alternative" do
        expect {
          post :create, {:alternative => valid_attributes}, valid_session
        }.to change(Alternative, :count).by(1)
      end

      it "assigns a newly created alternative as @alternative" do
        post :create, {:alternative => valid_attributes}, valid_session
        assigns(:alternative).should be_a(Alternative)
        assigns(:alternative).should be_persisted
      end

      it "redirects to the created alternative" do
        post :create, {:alternative => valid_attributes}, valid_session
        response.should redirect_to(Alternative.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved alternative as @alternative" do
        # Trigger the behavior that occurs when invalid params are submitted
        Alternative.any_instance.stub(:save).and_return(false)
        post :create, {:alternative => { "title" => "invalid value" }}, valid_session
        assigns(:alternative).should be_a_new(Alternative)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Alternative.any_instance.stub(:save).and_return(false)
        post :create, {:alternative => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested alternative" do
        alternative = Alternative.create! valid_attributes
        # Assuming there are no other alternatives in the database, this
        # specifies that the Alternative created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Alternative.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => alternative.to_param, :alternative => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested alternative as @alternative" do
        alternative = Alternative.create! valid_attributes
        put :update, {:id => alternative.to_param, :alternative => valid_attributes}, valid_session
        assigns(:alternative).should eq(alternative)
      end

      it "redirects to the alternative" do
        alternative = Alternative.create! valid_attributes
        put :update, {:id => alternative.to_param, :alternative => valid_attributes}, valid_session
        response.should redirect_to(alternative)
      end
    end

    describe "with invalid params" do
      it "assigns the alternative as @alternative" do
        alternative = Alternative.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Alternative.any_instance.stub(:save).and_return(false)
        put :update, {:id => alternative.to_param, :alternative => { "title" => "invalid value" }}, valid_session
        assigns(:alternative).should eq(alternative)
      end

      it "re-renders the 'edit' template" do
        alternative = Alternative.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Alternative.any_instance.stub(:save).and_return(false)
        put :update, {:id => alternative.to_param, :alternative => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested alternative" do
      alternative = Alternative.create! valid_attributes
      expect {
        delete :destroy, {:id => alternative.to_param}, valid_session
      }.to change(Alternative, :count).by(-1)
    end

    it "redirects to the alternatives list" do
      alternative = Alternative.create! valid_attributes
      delete :destroy, {:id => alternative.to_param}, valid_session
      response.should redirect_to(alternatives_url)
    end
  end

end
