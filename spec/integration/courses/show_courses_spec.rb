#encoding: UTF-8

require "spec_helper"

describe "Show Course" do

   before do
      visit "/"
      click_link "Turmas"
      click_link "Detalhar"
   end

   context "with students" do
      let(:student) { students(:carlos_eduardo) }
      let(:course)   { courses(:turma_1) }      



      xit "show students" do      
         course.students.should_not be_empty
      end
      
   end

   context "no students" do

   end
end