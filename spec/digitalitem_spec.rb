require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do
  before(:context) do
    #initlize item
    @di = DigitalItem.new("Item Name",12.99)
  end

  describe "Initialization" do
    #check that it is an instance of Bluray
    it "is an instance of the Item class" do
      expect(@di).to be_instance_of(DigitalItem)
    end  

    #check that it is an extended from Item
    it "is an instance of the Item class" do
      expect(@di).to be_kind_of(Item)
    end

    #check inilization
    it "is assigned a name" do
      expect(@di.name).to eq("Item Name")
    end
    it "is assigned a price" do
      expect(@di.price).to eq(12.99)
    end
    it "defaults to a quantity of 1" do
      expect(@di.quantity).to eq(1)
    end
  end


  #check getters and setters
  describe "Accessors" do
    it "should be able to get and set name" do
      @di.name="New Title"
      expect(@di.name).to eq("New Title")
    end   
    it "should be able to get and set price" do
      @di.price=44.99
      expect(@di.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@di.description).to eq("")
      @di.description="test"
      expect(@di.description).to eq("test")
    end      
  end

  describe "Methods" do
    it "should not change quantity on stock" do
      result = @di.stock 5
      expect(result).to eq(false)
      expect(@di.quantity).to eq(1)
    end
    it "should be able to sell regardless of quantity" do
      result = @di.sell 99
      expect(result).to eq(true)
    end  
    it "should not change quantity on sell" do
      expect(@di.quantity).to eq(1)
    end 
    it "returns should not raise quantity" do
      result = @di.return 5
      expect(result).to eq(true)
      expect(@di.quantity).to eq(1)
    end
  end  

end