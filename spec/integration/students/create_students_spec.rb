# encoding: UTF-8

require "spec_helper"

describe "Create Student" do
   context "with valid data" do
      before do
         visit "/"
         click_link "Alunos"
         click_link "Cadastre o aluno"

         fill_in "Nome do aluno", :with => "Carlos Eduardo"

         click_button "Cadastrar aluno"
      end

      it "redirects to the students page" do
         current_path.should eql(students_path)
      end

      it "displays success message" do
         page.should have_content("O aluno foi cadastrado com successo!")
      end
   end

   context "with invalid data" do
      before do
         visit "/"
         click_link "Alunos"
         click_link "Cadastre o aluno"         

         click_button "Cadastrar aluno"
      end

      it "render form page" do
         current_path.should eql(students_path)
      end

      it "displays error messages" do
         page.should have_content("Verifique o formulário antes de continuar.")
      end
   end
end
