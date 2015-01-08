require_relative 'spec_helper'
require_relative '../lib/ClothingItem'

describe ClothingItem do

  before(:context) do
    @clothing_item = ClothingItem.new("Generic Clothing Item", 6.99)
  end
  before(:context) do
    @clothing_item = ClothingItem.new("Generic Clothing Item", 6.99, 150)
  end

  describe "Initialization" do
    it "is extended from Item" do
      expect(@clothing_item).to be_kind_of(Item)
    end
    it "is an instance of Clothing Item class" do
      expect(@clothing_item).to be_instance_of(ClothingItem)
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@clothing_item.quantity).to eq(0)
    end
    it "should be able to get and set name" do
      @clothing_item.name="New Name"
      expect(@clothing_item.name).to eq("New Name")
    end   
    it "should be able to get and set price" do
      @clothing_item.price=44.99
      expect(@clothing_item.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@clothing_item.description).to eq("")
      @clothing_item.description="test"
      expect(@clothing_item.description).to eq("test")
    end
    it "should be able to get and set weight" do
      expect(@clothing_item.weight).to eq(0)
      @clothing_item.weight=100
      expect(@clothing_item.weight).to eq(100)
    end
    it "ship rate per oz should always be 1.2" do
      expect(@clothing_item.ship_price_per_oz).to eq (1.2)
    end  
  end
end