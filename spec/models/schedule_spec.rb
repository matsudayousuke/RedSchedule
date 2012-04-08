require File.dirname(__FILE__) + '/../spec_helper'

describe Schedule do
  before(:each) do
    @document_categories = Array.new
    4.times {@document_categories << Factory(:document_category)}
    # 6.times {Factory(:issue_priority)}
    # 4.times {Factory(:time_entry_activity)}
    # 2.times {Factory(:enumeration)}
    # 6.times {Factory(:issue_status)}
    # 3.times {Factory(:tracker)}
    # 3.times {Factory(:user, :status => )}
    # 2.times {Factory(:project)}
    # 4.times {Factory(:issue_category)}
    # 2.times {Factory(:issue)}
    @schedule = Factory.build(:schedule)
  end

  it "should be valid" do
    @schedule.should belong_to :issue
    # @schedule.should_not be_nil
    # @schedule.project_id.should == 1
    # @schedule.priority.id.should == 1
    
  end
end