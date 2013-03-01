# encoding: UTF-8

require "spec_helper"

describe "Create Discipline" do

   let!(:discipline) { disciplines(:banco_de_dados) }

   context "with valid data" do
      before do
         visit "/"
         click_link "Disciplinas"
         click_link "Cadastre a disciplina"

         fill_in "Nome da disciplina", :with => discipline.name

         click_button "Cadastrar disciplina"
      end

      it "redirects to the disciplines page" do
         current_path.should eql(disciplines_path)
      end

      it "displays success message" do
         page.should have_content("A disciplina foi criada com sucesso!")
      end
   end

   context "with invalid data" do
      before do
         visit "/"
         click_link "Disciplinas"
         click_link "Cadastre a disciplina"

         click_button "Cadastrar disciplina"
      end

      it "renders form page" do
         current_path.should eql(disciplines_path)
      end

      it "displays error messages" do
         page.should have_content("Verifique o formulário antes de continuar:")
      end
   end
end