#encoding: UTF-8

require "spec_helper"

describe Teacher, "Validations" do
	it { should allow("Áthila Soáres").for(:name) }
	it { should_not allow(nil).for(:name) }
end