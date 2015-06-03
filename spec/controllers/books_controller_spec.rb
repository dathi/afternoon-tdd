require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  describe "GET #new" do
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

  describe "POST #create" do
  	before do
  	  post :create, "book" => {"name" => "Hood", "description" => "This is Hood's book"}
  	end
  	it "should create a new book" do
  	  expect(assigns(:book)).not_to be_nil
  	  expect(assigns(:book).name).to eq "Hood"
  	end
  	
  end
end
