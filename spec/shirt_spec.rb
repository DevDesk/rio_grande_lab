require_relative 'spec_helper'
require_relative '../lib/Shirt'

describe Shirt do

  before(:context) do
    @shirt = Shirt.new("Generic Shirt", 6.99)
  end
  before(:context) do
    @shirt = Shirt.new("Generic Shirt", 6.99, 150)
  end

  describe "Initialization" do
    it "is extended from Clothing Item" do
      expect(@shirt).to be_kind_of(ClothingItem)
    end
    it "is an instance of Shirt class" do
      expect(@shirt).to be_instance_of(Shirt)
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@shirt.quantity).to eq(0)
    end
    it "should be able to get and set name" do
      @shirt.name="New Name"
      expect(@shirt.name).to eq("New Name")
    end   
    it "should be able to get and set price" do
      @shirt.price=44.99
      expect(@shirt.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@shirt.description).to eq("")
      @shirt.description="test"
      expect(@shirt.description).to eq("test")
    end
    it "should be able to get and set weight" do
      expect(@shirt.weight).to eq(0)
      @shirt.weight=100
      expect(@shirt.weight).to eq(100)
    end
    it "ship rate per oz should always be 1.2" do
      expect(@shirt.ship_price_per_oz).to eq (1.2)
    end  
  end

end