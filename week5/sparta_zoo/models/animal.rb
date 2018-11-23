class Animal

  attr_accessor :id, :name, :fact

  # Establish a connection from our file to the database
  def self.open_connection
    conn = PG.connect( dbname: "animals")
  end

  # index page - get all infortmation
  # all = gets all the information
  def self.all
    # firstly, need to connect to the database
    connection = self.open_connection
    # sql string - select everything from the database named "animals" and have them ordered by id
    sql = "SELECT * FROM animals ORDER by id"
    # execute the sql string above
    results = connection.exec(sql)
    #
    results.map do |animal|
      # hydrate makes all our results "useful". Perform hydrate on our results so we can store them in an array
      self.hydrate animal
    end
  end

  # show + edit page - gets individual animal information
  def self.find(animal_id)
    # connect to the database
    connection = self.open_connection
    # select the id corresponding to the animal we are interested in
    sql = "SELECT * FROM animals WHERE id=#{animal_id}"
    # return results of sql command, which will belong to the first element of the "animals" array
    animals = connection.exec(sql)
    # need to hydarte the value of animals so we can "do something" with it
    animal = self.hydrate animals[0]
  end

  # create new data entry
  def save
    # connect to database
    connection = Animal.open_connection

    # insert this new element into the table

    # if we are creating a new data entry then it does not have an id, therefore insert into the table as a new entry
    if !self.id
      sql = "INSERT INTO animals (name, fact) VALUES ('#{self.name}','#{self.fact}')"
    # if the data already exists then we don't want a new data entry we just want to update the currently existing data entry
    else
      sql = "UPDATE animals SET name='#{self.name}', fact='#{self.fact}' WHERE id=#{self.id}"
    end

    # execute the sql string
    connection.exec(sql)
  end

  # delete data entry
  def self.destroy id
     # make a connection with the database
    connection = self.open_connection
    # sql string we want to perform
    sql = "DELETE FROM animals WHERE id=#{id}"
    # execute the sql string
    connection.exec(sql)
  end

  # pass in the data as recieved by our server
  def self.hydrate data
    animal = Animal.new

    # create an aray of key-value pairs
    animal.id = data['id']
    animal.name = data['name']
    animal.fact = data['fact']

    animal
  end
end
