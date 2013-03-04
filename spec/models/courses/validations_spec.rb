#encoding: UTF-8

require "spec_helper"

describe Course, "Validations" do
   it { should allow("Turma 1").for(:name) }
   it { should_not allow(nil).for(:name) }

   context "name uniqueness" do
      let(:course) { courses(:turma_1) }      

      it { should_not allow(course.name).for(:name) }
   end
end
   
