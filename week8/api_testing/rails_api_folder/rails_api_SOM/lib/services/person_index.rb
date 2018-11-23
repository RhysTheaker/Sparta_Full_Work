require 'httparty'
require 'json'

class PersonIndexService
  include HTTParty

  base_uri 'http://localhost:3000'

  attr_accessor :people

  def get_people
    @people = JSON.parse(self.class.get('/people').body)
  end

  def person_type
    get_people.each do |person|
      unless person.is_a?(Hash)
        return false
      end
    end
    return true
  end

  def person_att attribute
    get_people.each do |person|
      unless person[attribute].is_a?(String)
        return false
      end
    end
    return true
  end

  def car_att_int? attribute
    get_people.each do |person|
      person["cars"].each do |key, value|
        unless key[attribute].is_a?(Integer)
          return false
        end
      end
    end
    return true
  end

  def car_att_string? attribute
    get_people.each do |person|
      person["cars"].each do |key, value|
        unless key[attribute].is_a?(String)
          return false
        end
      end
    end
    return true
  end

  def car_num
    get_people.each do |person|
      unless person["cars"].is_a?(Array)
        return false
      end
    end
    return true
  end

  def address_att_int? attribute
    get_people.each do |person|
      unless person["address"][attribute].is_a?(Integer)
        return false
      end
    end
    return true
  end

  def address_att_string? attribute
    get_people.each do |person|
      unless person["address"][attribute].is_a?(String)
        return false
      end
    end
    return true
  end

  def pet_att_int? attribute
    get_people.each do |person|
      person["pets"].each do |key, value|
        unless key[attribute].is_a?(Integer)
          return false
        end
      end
    end
    return true
  end

  def pet_att_string? attribute
    get_people.each do |person|
      person["pets"].each do |key, value|
        unless key[attribute].is_a?(String)
          return false
        end
      end
    end
    return true
  end

  def pet_id_num
    get_people.each do |person|
      person["pets"].each do |key, value|
        unless ((key["id"] >= 1) && (key["id"] <= 40))
          return false
        end
      end
    end
    return true
  end

  def pet_num_legs?
    get_people.each do |person|
      person["pets"].each do |key, value|
        unless ((key["legs"] >= 2) && (key["legs"] <= 4))
          return false
        end
      end
    end
    return true
  end

  def pet_att_num?
    get_people.each do |person|
      person["pets"].each do |pet|
        unless pet.length == 8
          return false
        end
      end
    end
    return true
  end

end
