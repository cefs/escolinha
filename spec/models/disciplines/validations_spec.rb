# encoding: UTF-8

require "spec_helper"

describe Discipline, "Validations" do
   it { should       allow("Português").for(:name) }
   it { should_not   allow(nil).for(:name)         }
end