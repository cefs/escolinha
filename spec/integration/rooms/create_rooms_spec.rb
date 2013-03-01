#encoding: UTF-8

require "spec_helper"

describe "Create Rooms" do

   let!(:course)     { courses(:turma_1)              }
   let!(:teacher)    { teachers(:athila_soares)       }
   let!(:discipline) { disciplines(:banco_de_dados)   }

   context "with valid data" do
      before do
         visit "/"

         click_link "Monte a sala de aula"

         select course.name,     :from =>"Curso"
         select teacher.name,    :from =>"Professor"
         select discipline.name, :from =>"Disciplina"

         click_button "Enviar dados"                       
      end

      it "redirects to the room page" do
         current_path.should eql(course_path(course))
      end

      it "displays success message" do
         page.should have_content("Dados enviados com sucesso!")
      end

      it "displays course" do
         page.should have_content(course.name)
      end

      it "displays teacher" do
         page.should have_content(teacher.name)
      end

      it "displays discipline" do
         page.should have_content(discipline.name)
      end
   end

   context "with invalid data" do
      before do
         visit "/"

         click_link "Monte a sala de aula"
         click_button "Enviar dados"
      end

      it "renders form" do
         current_path.should eql(rooms_path)
      end

      it "displays error messages" do
         page.should have_content("Verifique o formulário antes de continuar:")
      end
   end
end