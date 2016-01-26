class ElephantOwner < ActiveRecord::Base

 has_secure_password

 validates_presence_of :first_name, :last_name, :birthday, :city, :state, :email
 
 validates_uniqueness_of :email

 has_many :elephants

 def birthday?
    self.birthday.month == Time.now.month && birthday.day == Time.now.day
end

def age
    self.Time.now.year - birthday.year
end

def location
    self.city + ", " + state
end

def pro?
    self.max_elephant_weight > 1000
end

def handle_that_weight?(weight)
    self.max_elephant_weight >= weight
end

def age_in_elephant_years
    self.age * 3
end

def test_an_elephant!
    self.testing_elephant = true
    save
end

def stop_testing_elephants!
    self.testing_elephant = false
    save
end
end
