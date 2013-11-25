require 'spec_helper'

describe Item do
  it "has no items in the database" do
    expect(Item).to have(:no).records
    expect(Item).to have(0).records 
  end 

  it "has one record" do 
    Item.create!(:name => "2chainz")
    expect(Item).to have(1).records
  end 

  it "counts records that match query " do 
    Item.create!(:name => "2Chainz")
    expect(Item.where(:name => "2Chainz")).to have(1).record
    expect(Item.where(:name => "Wayne")).to have(0).record 
  end 
end
