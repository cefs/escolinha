#encoding: UTF-8

require "spec_helper"

describe Course, "Validations" do
   it { should allow("Turma 1").for(:name) }
   it { should_not allow(nil).for(:name) }
end
   
