#encoding: UTF-8

require "spec_helper"

describe "Create teacher" do
	context "with valid data" do
		before do
			visit "/"
			click_link "Professores"
			click_link "Cadastre o professor"

			fill_in "Nome do professor", :with => "Áthila Soáres"

			click_button "Cadastrar professor"
		end

		it "redirects to the theacher page" do
			current_path.should eql(teachers_path)
		end

		it "displays success message" do
			page.should have_content("O professor foi cadastrado com sucesso!")
		end
	end

	context "with invalid data" do
		before do
			visit "/"
			click_link "Professores"
			click_link "Cadastre o professor"

			click_button "Cadastrar professor"
		end

		it "renders form page" do
			current_path.should eql(teachers_path)
		end

		it "displays error messages" do
			page.should have_content("Verifique o formulário antes de continuar.")
		end
	end
end