require "spec_helper"

describe Room, "Validations" do
   it { should_not allow(nil).for(:course)      }
   it { should_not allow(nil).for(:discipline)  }
   it { should_not allow(nil).for(:teacher)     }
end