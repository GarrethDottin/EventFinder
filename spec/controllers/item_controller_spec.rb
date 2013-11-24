require 'spec_helper'

describe ItemsController do
  render_views

let(:item){{name: "Attempt", description: "this is working"}}
  describe "controller methods " do 
    it "#index" do 
      get :index 
      response.status.should eq 200 
    end 
  end 

end
