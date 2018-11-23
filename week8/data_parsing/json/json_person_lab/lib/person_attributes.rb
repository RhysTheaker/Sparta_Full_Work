require 'json'

class PersonAttributes

  attr_accessor :person_attributes

  def initialize json_file
    @person_attributes = JSON.parse(File.read(json_file))
  end

  def get_id
    count = 0
    @person_attributes.each do |person|
      if person["id"].is_a?(Integer)
      else
        count += 1
      end
    end
    if count == 0
      return true
    else
      return false
    end
  end

  def get_first_name
    count = 0
    @person_attributes.each do |person|
      if person["first_name"].is_a?(String)
      else
        count += 1
      end
    end
    if count == 0
      return true \
    else
      return false
    end
  end

  def get_street_num
    count = 0
    @person_attributes.each do |person|
      if (person["address"]["street_num"]).is_a?(String)
        count += 1
      end
    end
    if count == @person_attributes.length
      return true
    else
      return false
    end
  end

  def has_vehicle?
    count = 0
    @person_attributes.each do |person|
      if person["address"]["vehicle"].is_a?(Hash)
      else
        count += 1
      end
    end
    if count == 0
      return true
    else
      return false
    end
  end


  def get_car_make
    count = 0
    @person_attributes.each do |person|
      if (person["address"]["vehicle"]["car_make"]).is_a?(String)
        count += 1
      end
    end
    if count == @person_attributes.length
      return true
    else
      return false
    end
  end

  def get_car_colour
    count = 0
    @person_attributes.each do |person|
      if (person["address"]["vehicle"]["colour"]).is_a?(String)
        count += 1
      end
    end
    if count == @person_attributes.length
      return true
    else
      return false
    end
  end

  def car_num_attributes
    count = 0
    @person_attributes.each do |person|
      if person["address"]["vehicle"].length == 3
        count += 1
      end
    end
    if count == @person_attributes.length
      return true
    else
      return false
    end
  end

  def get_city
    count = 0
    @person_attributes.each do |person|
      if (person["address"]["city"]).is_a?(String)
        count += 1
      end
    end
    if count == @person_attributes.length
      return true
    else
      return false
    end
  end

  def get_friend_names
    count = 0
    @person_attributes.each do |person|
      person["friends"].each do |value|
        if value["first_name"].is_a?(String)
        else
          count += 1
        end
      end
    end
    if count == 0
      return true
    else
      return false
    end
  end

  def get_friend_num
    count = 0
    @person_attributes.each do |person|
      if ((person["friends"].length < 1) || (person["friends"].length > 5))
      count += 1
      end
    end
    if count == 0
      return true
    else
      return false
    end
  end

  def get_friend_att_num
    count = 0
    @person_attributes.each do |person|
      person["friends"].each do |val|
        if val.length != 2
          count += 1
        end
      end
    end
    if count == 0
      return true
    else
      return false
    end
  end

  def get_pets_type
    count = 0
    @person_attributes.each do |person|
      if person["pets"].is_a?(Array)
      else
        count += 1
      end
    end
    if count == 0
      return true
    else
      return false
    end
  end

  def get_pets_num
    count = 0
    @person_attributes.each do |person|
      person["pets"].each do |value|
        if ((value["mammal"].length < 1) || (value["mammal"].length > 5))
          count +=1
        end
      end
    end
    if count == 0
      return true
    else
      return false
    end
  end

  def get_animal_type
    count = 0
    @person_attributes.each do |person|
      person["pets"].each do |value|
        value["mammal"].each do |val|
          if val["animal"].is_a?(String)
          else
            count +=1
          end
        end
      end
    end
    if count == 0
      return true
    else
      return false
    end
  end

  def get_animal_legs
    count = 0
    @person_attributes.each do |person|
      person["pets"].each do |value|
        value["mammal"].each do |val|
          if !val["legs"].is_a?(Integer) then count +=1 end
        end
      end
    end
    if count == 0
      return true
    else
      return false
    end
  end

end
