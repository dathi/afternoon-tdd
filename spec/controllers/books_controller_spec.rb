require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  describe "#new" do
  	it "should be successful" do
  	  get :new
  	  expect(response).to be_success
  	end
  end
end
