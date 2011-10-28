require 'spec_helper'

describe Task do
  context "validations" do
    # A simple, but naive spec
    subject { Task.new name: nil }
    it { should_not be_valid }

    # A more specific spec
    it "should require name" do
      expect {
        Task.create!(name: nil)
      }.to raise_error ActiveRecord::RecordInvalid, "Validation failed: Name can't be blank"
    end
  end

  describe "toggle_and_give_message" do
    it "should toggle incomplete task to done" do
      task = Task.create name: "Do something", completed: false
      message = task.toggle_and_give_message
      task.completed.should be_true
      message.should == "Task done!"
    end

    it "should toggle undo a completed task" do
      task = Task.create name: "Already did something", completed: true
      message = task.toggle_and_give_message
      task.completed.should be_false
      message.should == "Task undone."
    end
  end
end
