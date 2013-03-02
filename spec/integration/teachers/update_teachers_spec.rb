#encoding: UTF-8

require "spec_helper"

describe "Update Teacher" do

   let(:teacher) { teachers(:athila_soares) }

   context "with valid data" do
      before do
         visit "/" 
         click_link "Professores"
         click_link "Editar"

         fill_in "Nome do professor", :with => teacher.name

         click_button "Atualizar professor"
      end

      it "redirect to teachers page" do
         current_path.should eql(teachers_path)
      end

      it "should not message of register not found" do
         page.should_not have_content("Nenhum registro!")
      end

      it "displays message success" do
         page.should have_content("O professor foi atualizado com sucesso!")
      end
   end

   context "with invalid data" do
      before do
         visit "/"
         click_link "Professores"
         click_link "Editar"

         fill_in "Nome do professor", :with => nil

         click_button "Atualizar professor"
      end

      it "render edit form " do
         current_path.should eql("/teachers/#{teacher.slug}")
      end

      it "displays error messages" do
         page.should have_content("Verifique o formulário antes de continuar:")
      end
   end
end