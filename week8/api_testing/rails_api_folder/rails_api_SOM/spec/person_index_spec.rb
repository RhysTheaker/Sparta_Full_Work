require_relative '../lib/person.rb'

describe 'Person' do

  before(:all) do
    @people_index = Person.new.person_index_service
  end

  context "getting all the people" do

    it "should return an array for what the entire data is stored in" do
      expect(@people_index.get_people).to be_kind_of(Array)
    end
  end

  context "core person details" do

    it "should return a hash for each person" do
      expect(@people_index.person_type).to be true
    end

    it "should return a string for the first name attribute" do
      expect(@people_index.person_att("first_name")).to be true
    end

    it "should return a string for the last name attribute" do
      expect(@people_index.person_att("last_name")).to be true
    end

    it "should return a string for the dob name attribute" do
      expect(@people_index.person_att("dob")).to be true
    end

    it "should return a string for the job name attribute" do
      expect(@people_index.person_att("job")).to be true
    end

    it "should return a string for the organisation name attribute" do
      expect(@people_index.person_att("organisation")).to be true
    end
  end

  context "details about a person's address" do

    it "should return an integer for the id" do
      expect(@people_index.address_att_int?("id")).to be true
    end

    it "should return an integer for the street number" do
      expect(@people_index.address_att_int?("street_number")).to be true
    end

    it "should return an integer for the person id" do
      expect(@people_index.address_att_int?("person_id")).to be true
    end

    it "should return a string for the street name attribute" do
      expect(@people_index.address_att_string?("street_name")).to be true
    end

    it "should return a string for the city attribute" do
      expect(@people_index.address_att_string?("city")).to be true
    end

    it "should return a string for the country attribute" do
      expect(@people_index.address_att_string?("country")).to be true
    end

    it "should return a string for the zip attribute" do
      expect(@people_index.address_att_string?("zip")).to be true
    end

  end

  context "details about a person's car" do

    it "should return an integer for the id number" do
      expect(@people_index.car_att_int?("id")).to be true
    end

    it "should return an integer for the person_id number" do
      expect(@people_index.car_att_int?("person_id")).to be true
    end

    it "should return a string for the car model attribute" do
      expect(@people_index.car_att_string?("car_model")).to be true
    end

    it "should return a string for the car make attribute" do
      expect(@people_index.car_att_string?("car_make")).to be true
    end

    it "should return a string for the car year attribute" do
      expect(@people_index.car_att_string?("car_year")).to be true
    end

    it "should return a string for the car colour attribute" do
      expect(@people_index.car_att_string?("car_colour")).to be true
    end

    it "should have cars being an array" do
      expect(@people_index.car_num).to be true
    end

  end

  context "details about a person's pet" do

    it "should be an integer for the id" do
      expect(@people_index.pet_att_int?("id")).to be true
    end

    it "should be an integer for the person_id" do
      expect(@people_index.pet_att_int?("person_id")).to be true
    end

    it "should be an integer for the pet's number of legs attribute" do
      expect(@people_index.pet_att_int?("legs")).to be true
    end

    it "should be a string for the pet's name attribute" do
      expect(@people_index.pet_att_string?("name")).to be true
    end

    it "should be a string for the pet's animal type attribute" do
      expect(@people_index.pet_att_string?("animal")).to be true
    end

    it "should be a string for the pet's origin attribute" do
      expect(@people_index.pet_att_string?("origin")).to be true
    end

    it "should have an id between 1 and 40" do
      expect(@people_index.pet_id_num).to be true
    end

    it "should have between 2 and 4 legs" do
      expect(@people_index.pet_num_legs?).to be true
    end

    it "should have in total 8 attributes for each pet" do
      expect(@people_index.pet_att_num?).to be true
    end

  end

end
