require 'spec_helper'

describe HomeController do

  describe "should respond to http calls" do

    describe "GET 'index'" do
      it "returns http success" do
        get 'index'
        response.should be_success
      end
    end

  end

  describe "should have the correct layout" do
    render_views

    before(:each) do
      get 'index'
    end

    # check we're displaying all the things we should
    it "should have a title" do
      response.should have_selector("title", :content => Prelaunch::Application.config.title)
    end

    it "should have a company name" do
      response.should have_selector("#company", :content => Prelaunch::Application.config.company) 
    end

    it "should have a tagline" do
      response.should have_selector("#tagline", :content => Prelaunch::Application.config.tagline)
    end

    it "should have a logo image" do
      response.should have_selector("img#logo")
    end

    #pending "should have an e-mail capture field"

    #pending "should have a follow-us block"

  end  
end
