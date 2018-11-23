class Person

    def name
        # create a name variable
        name = "Steve"
    end

    def age
        # create age variable here
        age = 44

    end

    def children
        # create children array here
        children = ["Dan", "Tom", "Keith", "BigBazzer"]


    end

    def address

        # create address hash here
        address = {
          house_number: 69,
          street: "High street",
          town: "Townville",
          county: "Countyville",
          postcode: "S24SU",
          email_addresses: ["Email1", "Email2"]
        }

    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
          password: "#{favourite_things[1]} #{birth_town}"
        }

    end

end
