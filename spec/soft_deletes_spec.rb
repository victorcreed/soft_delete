require "spec_helper"
describe SoftDelete do 
  let(:user) { User.create }
  it "mark the soft destroy method" do 
    user.destroy.should == true
  end
end
