# elephant_owner.rb

FactoryGirl.define do
  factory :elephant_owner do
   first_name "Jeff"
   last_name "Bowne"
   birthday Time.now
   city "Philly"
   state "PA"
   email "Jeff@circus.com"
   max_elephant_weight 900
   password "password123"
end       

factory :invalid_no_first_name_elephant_owner, class: ElephantOwner do
   first_name nil
   last_name "Bowne"
   birthday Time.now
   city "Philly"
   state "PA"
   email "Jeff@circus.com"
   max_elephant_weight 900
   password "password123"
end 

factory :invalid_no_last_name_elephant_owner, class: ElephantOwner do
   first_name "Jeff"
   last_name nil
   birthday Time.now
   city "Philly"
   state "PA"
   email "Jeff@circus.com"
   max_elephant_weight 900
   password "password123"
end 
end