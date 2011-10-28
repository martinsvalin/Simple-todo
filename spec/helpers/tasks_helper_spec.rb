# encoding: utf-8
require 'spec_helper'

describe TasksHelper do
  describe "completed" do
    it "returns a check mark if the task is completed" do
      task = mock_model("Task", completed: true)
      completed(task).should == content_tag(:span, "✔", class: "completed")
    end

    it "returns a cross if the task is completed" do
      task = mock_model("Task", completed: false)
      completed(task).should == content_tag(:span, "✖", class: "incomplete")
    end
  end
end
