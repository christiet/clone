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

    before (:each) do
      visit 'index'
    end

    # check we're displaying all the things we should
    it "has a title" do
      page.should have_selector("title", :content => Prelaunch::Application.config.title)
    end

    it "has a company name" do
      page.should have_selector("#company", :content => Prelaunch::Application.config.company) 
    end

    it "has a tagline" do
      page.should have_selector("#tagline", :content => Prelaunch::Application.config.tagline)
    end

    it "has a logo image" do
      page.should have_selector("img#logo")
    end

    it "has an e-mail capture field" do
      page.should have_selector("input#email")
    end

    it "has an e-mail notify button" do
      page.should have_selector("input#notify", :href => "#")
    end

    describe "has a follow-us section" do
      it "has a follow-us block" do
        page.should have_selector("div#follow")
      end

      it "has the right elements" do
        Prelaunch::Application.config.social.map  { |k, v|
          page.should have_selector("a##{k}", :href => "#{v}")
        }
      end
    end
  end

  describe "has a working notify button" do

    it "submits a valid e-mail address" do
      
    end

    it "rejects an invalid e-mail address" do
      
    end

    pending "submits a valid e-mail address to campaign manager" do

    end
  end  
end
