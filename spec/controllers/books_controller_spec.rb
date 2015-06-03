require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  describe "#new" do
  	before do
  	  get :new
  	end
  	it "should be successful" do
  	  expect(response).to be_success
  	end
  	it "should create a book object" do
  	  expect(assigns(:book)).not_to be_nil
  	end
  end
end
