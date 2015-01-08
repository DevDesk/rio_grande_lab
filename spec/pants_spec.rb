require_relative 'spec_helper'
require_relative '../lib/Pants'

describe Pants do

  before(:context) do
    @pants = Pants.new("Generic Pants", 6.99)
  end
  before(:context) do
    @pants = Pants.new("Generic Pants", 6.99, 150)
  end

  describe "Initialization" do
    it "is extended from Clothing Item" do
      expect(@pants).to be_kind_of(ClothingItem)
    end
    it "is an instance of Pants class" do
      expect(@pants).to be_instance_of(Pants)
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@pants.quantity).to eq(0)
    end
    it "should be able to get and set name" do
      @pants.name="New Name"
      expect(@pants.name).to eq("New Name")
    end   
    it "should be able to get and set price" do
      @pants.price=44.99
      expect(@pants.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@pants.description).to eq("")
      @pants.description="test"
      expect(@pants.description).to eq("test")
    end
    it "should be able to get and set weight" do
      expect(@pants.weight).to eq(0)
      @pants.weight=100
      expect(@pants.weight).to eq(100)
    end
    it "ship rate per oz should always be 1.2" do
      expect(@pants.ship_price_per_oz).to eq (1.2)
    end  
  end

end