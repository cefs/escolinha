# encoding: UTF-8

require "spec_helper"

describe "Update Student", :js => false do

   let!(:student) { students(:carlos_eduardo)   }
   let!(:course)  { courses(:turma_1)           }

   context "with valid data" do
      before do
         visit "/"
         click_link "Alunos"         
         click_link "Editar"

         fill_in "Nome do aluno", :with => student.name         
         fill_in "E-mail do aluno", :with => student.email         
         select course.name, :from => "Curso"

         click_button "Atualizar aluno"
      end

      it "redirects to the Students page" do
         current_path.should eql(students_path)
      end

      it "should not message of register not found" do
         page.should_not have_content("Nenhum registro!")
      end

      it "displays success message" do
         page.should have_content("O aluno foi atualizado com sucesso!")
      end
   end

   context "with invalid data" do
      before do
         visit "/"
         click_link "Alunos"         
         click_link "Editar"

         fill_in "Nome do aluno", :with => nil         
         fill_in "E-mail do aluno", :with => nil
         select course.name, :from => "Curso"

         click_button "Atualizar aluno"
      end

      it "renders edit form" do
         current_path.should eql("/students/#{student.slug}")
      end

      it "displays error messages" do
         page.should have_content("Verifique o formulário antes de continuar:")
      end
   end
end
