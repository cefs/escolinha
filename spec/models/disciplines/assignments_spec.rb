# encoding: UTF-8

require "spec_helper"

describe Discipline, "Assignments" do
   it "doesn't throw expection" do
      expect{
         Discipline.create :name => "Português"
      }.not_to raise_error
   end
end
