# encoding: UTF-8

require "spec_helper"

describe "Update Courses" do

   let(:course) { courses(:turma_1) }

   context "with valid data" do
      before do
         visit "/"
         click_link "Turmas"
         click_link "Editar"

         fill_in "Nome da turma", :with => course.name

         click_button "Atualizar turma"
      end

      it "redirects to courses page" do
         current_path.should eql(courses_path)
      end

      it "displays success messages" do
         page.should have_content("A turma foi atualizada com sucesso!")
      end
   end

   context "with invalid data" do
      before do
         visit "/"
         click_link "Turmas"
         click_link "Editar"

         fill_in "Nome da turma", :with => nil

         click_button "Atualizar turma"
      end

      it "render edit form" do
         current_path.should eql("/courses/#{course.slug}")
      end

      it "displays error messages" do
         page.should have_content("Verifique o formulário antes de continuar:")
      end
   end
end