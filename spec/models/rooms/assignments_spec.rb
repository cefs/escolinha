require "spec_helper"

describe Room, "Assignments" do
   it "doesn't throw expection" do
      expect{
         Room.new({
            :course_id     => 1,
            :teacher_id    => 1,
            :discipline_id => 1
         })
      }.to_not raise_error
   end
end