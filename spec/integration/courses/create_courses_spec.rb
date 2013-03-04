#encoding: UTF-8

   require "spec_helper"

describe "Create Curso" do

   #let(:course) { courses(:turma_1) }

   context "with valid data" do
      before do
         visit "/"
         click_link "Turmas"
         click_link "Cadastre a turma"

         fill_in "Nome da turma", :with => "Turma teste"

         click_button "Cadastrar turma"
      end

      it "redirects to the courses page" do
         current_path.should eql(courses_path)
      end

      it "should not message of register not found" do
         page.should_not have_content("Nenhum registro!")
      end

      it "displays success message" do
         page.should have_content("A turma foi cadastrada com sucesso!")
      end
   end

   context "with invalid data" do
      before do
         visit "/"
         click_link "Turmas"
         click_link "Cadastre a turma"

         click_button "Cadastrar turma"         
      end

      it "renders form page" do
         current_path.should eql(courses_path)
      end

      it "displays error messages" do
         page.should have_content("Verifique o formulário antes de continuar:")
      end
   end
end