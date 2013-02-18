#encoding: UTF-8
require "spec_helper"

describe Course, "Assignment" do
   it "doens't throw exception" do
      expect{
         Course.create({
            :name => "Classe 1"
         })
      }.to_not raise_error
   end
end