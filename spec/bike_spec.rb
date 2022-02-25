require 'bike'

describe Bike do

  it "responds to the method working?" do
    bike = Bike.new("good")
    expect(bike.working?).to eq true
  end

  it "raises an error if the condition is anything other than 'good' or 'broken'" do
    expect { Bike.new("not_good") }.to raise_error 'incorrect condition'
  end

  # it "should not allow to set a wrong condition" do
  #   bike = Bike.new("good")
  #   expect(bike.working?).to eq true
  #   expect { bike.condition = "lol" }.to raise_error 'incorrect condition'
  # end

end