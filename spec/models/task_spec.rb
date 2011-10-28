require 'spec_helper'

describe Task do
  context "validations" do
    # A simple, but naive spec
    subject { Task.new :name => nil }
    it { should_not be_valid }

    # A more specific spec
    it "should require name" do
      lambda {
        Task.create!(:name => nil)
      }.should raise_error ActiveRecord::RecordInvalid, "Validation failed: Name can't be blank"
    end
  end
end
