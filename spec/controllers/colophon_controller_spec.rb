require 'spec_helper'

describe ColophonController do

  describe "GET 'colophon'" do
    it "returns http success" do
      get 'colophon'
      response.should be_success
    end
  end

end
