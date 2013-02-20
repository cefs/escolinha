# encoding: UTF-8

require "spec_helper"

describe Student, "Validations" do
   it { should allow("Carlos Eduardo").for(:name)  }
   it { should_not allow(nil).for(:name)           }   
   it { should allow(nil).for(:course)             }  
end
