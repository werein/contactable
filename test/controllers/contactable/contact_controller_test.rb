require 'test_helper'

module Contactable
  describe ContactController do  
    let(:message_attr) { attributes_for(:message) }
    let(:invalid_attr) { attributes_for(:invalid_message) }

    it "should get new message" do
      get :new, use_route: :contactable_engine
      assert_response :success
      assert_template :new
      assigns(:contact).must_be_kind_of Contact
    end

    it "should send message with valid attributes" do 
      post :create, use_route: :contactable_engine, contact: message_attr
      assert_response :redirect
      assert_redirected_to contact_path
    end

    it "shouldn't send message with valid attributes" do 
      post :create, use_route: :contactable_engine, contact: invalid_attr
      assert_response :success
      assert_template :new
    end
  end
end