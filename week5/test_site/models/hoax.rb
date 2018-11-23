class Hoax
  attr_accessor :id, :name, :info

  def self.open_connection
    conn = PG.connect( dbname: 'hoaxes')
  end

  def self.all
    # establish a connection with the database
    conn = self.open_connection
    # select all the elements from the table, and order them by their id's
    sql = "SELECT * FROM hoax ORDER BY id"
    # excecute the sql string
    results = conn.exec(sql)
    # as "results" returns a value which we can not work with, we "hydrate" it's value such that it is useable
    results.map do |hoax|
      self.hydrate hoax
    end
  end

  def self.find id
    conn = self.open_connection

    sql = "SELECT * FROM hoax WHERE id = #{id}"

    results = conn.exec(sql)

    hoax = self.hydrate results[0]

    hoax
  end

  def save
    # establish a connection with the database
    conn = Hoax.open_connection
    # if the id doesn't exist then we want to create the new element in the table
    if !self.id
      sql = "INSERT INTO hoax (name, info) VALUES ('#{self.name}', '#{self.info}')"
    else
      # if the element already exist then we don't want a new element, we just want to update the existing element
      sql = "UPDATE hoax SET name='#{self.name}', info='#{self.info}'"
    end
    # excecute the sql string
    conn.exec(sql)
  end

  def self.destroy id
    # establish a connection with the database
    conn = self.open_connection
    # sql string which we wish to perform
    sql = "DELETE FROM hoax WHERE id=#{id}"
    # perform the sql string
    conn.exec(sql)

  end

  def self.hydrate hoax_data
    # create a new instance of the class: "Hoax"
    hoax = Hoax.new
    # create an array of key value pairs
    hoax.id = hoax_data['id']
    hoax.name = hoax_data['name']
    hoax.info = hoax_data['info']

    hoax
  end
end
