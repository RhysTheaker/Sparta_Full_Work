require_relative '../lib/person_attributes.rb'

describe 'Person Attributes' do

  before(:all) do
    @person = PersonAttributes.new 'json/person_attributes.json'
  end

  it "should return an array" do
    expect(@person.person_attributes).to be_kind_of(Array)
  end

  context "A person's core details" do

    it "should return an integer for the id attribute" do
      expect(@person.get_id).to be true
    end

    it "should return a string for the first_name attribute" do
      expect(@person.get_first_name).to be true
    end
  end

  context "A person's address" do

    it "should return a string for the street number" do
      expect(@person.get_street_num).to be true
    end

    it "should return a string for the city" do
      expect(@person.get_city).to be true
    end
  end


  context "A person's friends" do

    it "should return a string for both the first and second name for the person's friends" do
      expect(@person.get_friend_names).to be true
    end

    it "should have between 1 and 5 friends for each person" do
      expect(@person.get_friend_num).to be true
    end

    it "should have 2 attributes for each friend" do
      expect(@person.get_friend_att_num).to be true
    end
  end

  context "A person's vehicle" do

    it "should have a vehicle" do
      expect(@person.has_vehicle?).to be true
    end

    it "should return a string for the make of the car" do
      expect(@person.get_car_make).to be true
    end

    it "should return a string for the colour of the car" do
      expect(@person.get_car_colour).to be true
    end

    it "should return only 3 attributes for the car" do
      expect(@person.car_num_attributes).to be true
    end
  end

  context "A person's pets" do

    it "should be an array" do
      expect(@person.get_pets_type).to be true
    end

    it "should contain between 1 and 5 animals for each respective mammal" do
      expect(@person.get_pets_num).to be true
    end

    it "should be a string type for every animal" do
      expect(@person.get_animal_type).to be true
    end

    it "should be an integer type for the number of legs" do
      expect(@person.get_animal_legs).to be true
    end
  end

end
