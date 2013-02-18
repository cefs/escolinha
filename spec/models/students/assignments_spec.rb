require "spec_helper"

describe Student, "Assignment" do

   it "doesn't throw exception" do
      expect{
         Student.create({
            :name => "Carlos Eduardo"
         })
      }.not_to raise_error
   end   
end