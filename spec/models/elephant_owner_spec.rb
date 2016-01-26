require "rails_helper"

RSpec.describe ElephantOwner, :type => :model do

context "testing invalid attributes" do 
 it ".create to see if invalid attributes (missing first_name) for an ElephantOwner doesn't save to DB" do
        e = build(:invalid_no_first_name_elephant_owner)
        expect(ElephantOwner.all.count).to eql(0)
    end

    it "#age should return 0 for an invalid tester" do
        e = build(:invalid_no_first_name_elephant_owner)
        expect(e.age).to eql(0)
    end

    it "#location should return city and state" do 
        e = build(:invalid_no_first_name_elephant_owner)
        expect(e.location).to eq("#{e.city}, #{e.state}")

    end
    it ".create to see if invalid attributes for an ElephantOwner can save to DB" do
        build(:invalid_no_first_name_elephant_owner)
        expect(ElephantOwner.all.count).to eql(0)
    end

end

context "testing valid attributes" do 
    it ".create to see if valid attributes for an ElephantOwner can save to DB" do
        e_owner = create(:elephant_owner)
        expect(ElephantOwner.all.count).to eql(1)
    end

    it "#birthday? should return true for a valid tester" do
        e_owner = create(:elephant_owner)
        expect(e_owner.birthday?).to be(true)
    end

    it "#age should return 0 for a valid tester" do
        e_owner = create(:elephant_owner)
        expect(e_owner.age).to eql(0)
    end

    it "#location should return city and state" do 
        e_owner = create(:elephant_owner)
        expect(e_owner.location).to eq("#{e_owner.city}, #{e_owner.state}")

    end
    it ".create to see if invalid attributes for an ElephantOwner can save to DB" do
        build(:invalid_no_first_name_elephant_owner)
        expect(ElephantOwner.all.count).to eql(0)
    end

end


end