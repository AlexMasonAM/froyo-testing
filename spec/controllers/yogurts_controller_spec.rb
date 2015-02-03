require 'rails_helper'

RSpec.describe YogurtsController, :type => :controller do
  describe 'GET index' do
    let!(:yogurt1) { Yogurt.create!(flavor: 'original', quantity: 5, topping: 'kiwi') }
    let!(:yogurt2) { Yogurt.create!(flavor: 'strawberry', quantity: 10, topping: 'strawberries') }
    before(:each) do
      get :index #fake someone going to index page   
    end 

    it "is successful" do
      expect(response).to be_success #checks for 200 status code in ruby response object
    end
    
    it "assigns all the yogurts to yogurts" do
      expect( assigns(:yogurts) ).to include(yogurt1, yogurt2) #must be an array 
    end
    
    it "renders the index view file/template" do
      expect(response).to render_template :index
    end
  end

  describe 'GET show' do
    let!(:yogurt) { Yogurt.create!(flavor: 'ny cheesecake', quantity: 0.9, topping: 'strawberries') }
    let!(:not_the_yogurt) { Yogurt.create!(flavor: 'not ny cheesecake', quantity: 0.9, topping: 'coal') }
    before(:each) {
      get :show, id: yogurt.id #fake someone going to index page   
    } 

    it "is successful" do
      expect(response).to be_success #checks for 200 status code in ruby response object
    end

    it "renders the index view file/template" do
      expect(response).to render_template :show
    end

    it "assigns the requested yogurt to a variable yogurt" do
      expect( assigns(:yogurt) ).to eq(yogurt)
    end
  end

  describe 'GET new' do
    before(:each) {
      get :new   
    }
    
    it "is successful" do
      expect(response).to be_success #checks for 200 status code in ruby response object
    end

    it "renders the new view file" do
      expect(response).to render_template :new
    end

    it "assigns a new yogurt to a variable yogurt"
    it "doesn't save any new records"
  end
end