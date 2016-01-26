require "rails_helper"

RSpec.describe ElephantOwner, :type => :model do

    let(:valid_attributes){
        {
         first_name: "Jeff",
         last_name: "Bowne",
         birthday: Time.now,
         city: "Philly",
         state: "PA",
         email: "Jeff@circus.com",
         max_elephant_weight: 900,
         password: "password123"
     }
 }
 let(:first_name_invalid_attributes){
    {
     first_name: nil,
     last_name: "Bowne",
     birthday: Time.now,
     city: "Philly",
     state: "PA",
     email: "Jeff@circus.com",
     max_elephant_weight: 900,
     password: "password123"
 }
}

 let(:last_name_invalid_attributes){
    {
     first_name: nil,
     last_name: "Bowne",
     birthday: Time.now,
     city: "Philly",
     state: "PA",
     email: "Jeff@circus.com",
     max_elephant_weight: 900,
     password: "password123"
 }
}
let(:valid_tester) { ElephantOwner.create(valid_attributes)}
let(:invalid_tester) { ElephantOwner.new(first_name_invalid_attributes)}

context "testing invalid attributes" do 
 it ".create to see if invalid attributes (missing first_name) for an ElephantOwner doesn't save to DB" do
        first_name_invalid_attributes
        expect(ElephantOwner.all.count).to eql(0)
    end

    it "#age should return 0 for an invalid tester" do
        expect(invalid_tester.age).to eql(0)
    end

    it "#location should return city and state" do 
        expect(invalid_tester.location).to eq("#{invalid_tester.city}, #{invalid_tester.state}")

    end
    it ".create to see if invalid attributes for an ElephantOwner can save to DB" do
        invalid_tester
        expect(ElephantOwner.all.count).to eql(0)
    end

end

context "testing valid attributes" do 
    it ".create to see if valid attributes for an ElephantOwner can save to DB" do
        valid_tester
        expect(ElephantOwner.all.count).to eql(1)
    end

    it "#birthday? should return true for a valid tester" do
        expect(valid_tester.birthday?).to be(true)
    end

    it "#age should return 0 for a valid tester" do
        expect(valid_tester.age).to eql(0)
    end

    it "#location should return city and state" do 
        expect(valid_tester.location).to eq("#{valid_tester.city}, #{valid_tester.state}")

    end
    it ".create to see if invalid attributes for an ElephantOwner can save to DB" do
        invalid_tester
        expect(ElephantOwner.all.count).to eql(0)
    end

end


end