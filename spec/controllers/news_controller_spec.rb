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

describe NewsController do

  # This should return the minimal set of attributes required to create a valid
  # New. As you add validations to New, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "title" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # NewsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all news as @news" do
      new = New.create! valid_attributes
      get :index, {}, valid_session
      assigns(:news).should eq([new])
    end
  end

  describe "GET show" do
    it "assigns the requested new as @new" do
      new = New.create! valid_attributes
      get :show, {:id => new.to_param}, valid_session
      assigns(:new).should eq(new)
    end
  end

  describe "GET new" do
    it "assigns a new new as @new" do
      get :new, {}, valid_session
      assigns(:new).should be_a_new(New)
    end
  end

  describe "GET edit" do
    it "assigns the requested new as @new" do
      new = New.create! valid_attributes
      get :edit, {:id => new.to_param}, valid_session
      assigns(:new).should eq(new)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new New" do
        expect {
          post :create, {:new => valid_attributes}, valid_session
        }.to change(New, :count).by(1)
      end

      it "assigns a newly created new as @new" do
        post :create, {:new => valid_attributes}, valid_session
        assigns(:new).should be_a(New)
        assigns(:new).should be_persisted
      end

      it "redirects to the created new" do
        post :create, {:new => valid_attributes}, valid_session
        response.should redirect_to(New.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved new as @new" do
        # Trigger the behavior that occurs when invalid params are submitted
        New.any_instance.stub(:save).and_return(false)
        post :create, {:new => { "title" => "invalid value" }}, valid_session
        assigns(:new).should be_a_new(New)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        New.any_instance.stub(:save).and_return(false)
        post :create, {:new => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested new" do
        new = New.create! valid_attributes
        # Assuming there are no other news in the database, this
        # specifies that the New created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        New.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => new.to_param, :new => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested new as @new" do
        new = New.create! valid_attributes
        put :update, {:id => new.to_param, :new => valid_attributes}, valid_session
        assigns(:new).should eq(new)
      end

      it "redirects to the new" do
        new = New.create! valid_attributes
        put :update, {:id => new.to_param, :new => valid_attributes}, valid_session
        response.should redirect_to(new)
      end
    end

    describe "with invalid params" do
      it "assigns the new as @new" do
        new = New.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        New.any_instance.stub(:save).and_return(false)
        put :update, {:id => new.to_param, :new => { "title" => "invalid value" }}, valid_session
        assigns(:new).should eq(new)
      end

      it "re-renders the 'edit' template" do
        new = New.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        New.any_instance.stub(:save).and_return(false)
        put :update, {:id => new.to_param, :new => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested new" do
      new = New.create! valid_attributes
      expect {
        delete :destroy, {:id => new.to_param}, valid_session
      }.to change(New, :count).by(-1)
    end

    it "redirects to the news list" do
      new = New.create! valid_attributes
      delete :destroy, {:id => new.to_param}, valid_session
      response.should redirect_to(news_url)
    end
  end

end