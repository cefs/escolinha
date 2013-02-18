#encoding: UTF-8

require "spec_helper"

describe Teacher, "Assignment" do
	it "doesn't throw exception" do
		expect{
			Teacher.create({
				:name => "Áthila Soáres"
			})
		}.to_not raise_error
	end
end