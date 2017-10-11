require_relative('../models/student')
require_relative('../models/house')

Student.delete_all
House.delete_all

house1 = House.new({
  "house_name" => "Gryffindor",
  "url_logo" => " "
  })
house1.save()

house2 = House.new({
  "house_name" => "Ravenclaw",
  "url_logo" => " "
  })
house2.save()

house3 = House.new({
  "house_name" => "Hufflepuff",
  "url_logo" => " "
  })
house3.save()

house4 = House.new({
  "house_name" => "Slytherin",
  "url_logo" => " "
  })
house4.save()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house1.id,
  "age" => 15
  })
student1.save()

student2 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Grainger",
  "house_id" => house1.id,
  "age" => 15
  })
student2.save()

student3 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house_id" => house4.id,
  "age" => 15
  })
student3.save()

student4 = Student.new({
  "first_name" => "Joe",
  "last_name" => "Bloggs",
  "house_id" => house2.id,
  "age" => 16
    })
student4.save()
