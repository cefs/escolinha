# encoding: UTF-8

require "spec_helper"

describe "Update Disciplines" do

   let(:discipline) { disciplines(:banco_de_dados) }

   context "with valid data" do
      before do
         visit "/"
         click_link "Disciplinas"
         click_link "Editar"

         fill_in "Nome da disciplina", :with => discipline.name

         click_button "Atualizar disciplina"
      end

      it "redirects to discipline pages" do
         current_path.should eql(disciplines_path)
      end

      it "displays success messages" do
         page.should have_content("A disciplina foi atualizada com sucesso!")
      end
   end

   context "with invalid data" do
      before do
         visit "/"
         click_link "Disciplinas"
         click_link "Editar"

         fill_in "Nome da disciplina", :with => nil

         click_button "Atualizar disciplina"
      end

      it "render edit form" do
         current_path.should eql("/disciplines/#{discipline.id}")
      end

      it "displays error messages" do
         page.should have_content("Verifique o formulário antes de continuar.")
      end
   end
end