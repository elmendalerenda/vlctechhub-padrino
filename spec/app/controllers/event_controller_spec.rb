require 'spec_helper'

describe "EventController" do
  before do
    event = Event.new

    event[:year] = '2011'
    event[:month] = '1'
    event.insert
  end

  after do
    Event.delete_all
  end


  it "returns a json with the fields in the database" do
    get "event/2011/1"

    da_response = JSON.parse(last_response.body)

    da_response[0]['year'].should == 2011
  end


  it "doenst contain system properties" do
    get "event/2011/1"

    da_response = JSON.parse(last_response.body)

    da_response[0]['_id'].should be_nil
    da_response[0]['_type'].should be_nil
    da_response[0]['created_at'].should be_nil
    da_response[0]['modified_at'].should be_nil
  end

end
