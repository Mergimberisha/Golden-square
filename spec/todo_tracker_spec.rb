require "todo_tracker"

RSpec.describe "TodoTracker" do
  context "give one task" do
    it "return one task" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("add1")
      expect(todo_tracker.list).to eq "add1"
    end
  end

  context "give two tasks" do
    it "return two tasks" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("add1")
      todo_tracker.add_todo("add2")
      expect(todo_tracker.list).to eq "add1, add2"
    end
  end

  context "give no tasks" do
    it "return empty" do
      todo_tracker = TodoTracker.new
      expect(todo_tracker.list).to eq ""
    end
  end

  context "give one task and completing the task" do
    it "return empty" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("add2")
      todo_tracker.complete("add2")
      expect(todo_tracker.list).to eq ""
    end
  end

  context "give two tasks and completing one task" do
    it "return empty" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("add1")
      todo_tracker.add_todo("add2")
      todo_tracker.complete("add1")
      expect(todo_tracker.list).to eq "add2"
    end
  end

  context "completing a task which does not exist on the list" do
    it "fails" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("add1")
      todo_tracker.add_todo("add2")
      expect { todo_tracker.complete("add3") }.to raise_error "Task does not exist"
    end
  end
end
