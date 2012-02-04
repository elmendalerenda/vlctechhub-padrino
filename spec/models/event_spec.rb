require 'spec_helper'

describe "Event Model" do
  let(:event) { Event.new }
  it 'can be created' do
    event.should_not be_nil
  end
end
