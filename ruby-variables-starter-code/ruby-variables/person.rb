class Person

    def name
        # create a name variable
        name = "Steve"
    end

    def age
        # create age variable here
      age = 26
    end

    def children
      children = ["child1","child2","child3","child4"]
        # create children array here


    end

    def address
      address = {
        :house_number => 4,
        :street => Melford_Road,
        :town => Ilford,
        :county => Essex,
        :postcode => IG1_1RH,
        :email_addresses => ["a","b"]
      }

        # create address hash here

    end

    def password
      password = favourite_things[1]+" "+memorable_stuff.birth_town

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }

    end

end
