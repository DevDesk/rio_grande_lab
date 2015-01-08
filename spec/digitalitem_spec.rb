require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    @digital_item = DigitalItem.new("Generic Digital Item", 6.99)
  end
  before(:context) do
    @digital_item = DigitalItem.new("Generic Digital Item", 6.99, 150)
  end

  describe "Initialization" do
    it "is extended from Item" do
      expect(@digital_item).to be_kind_of(Item)
    end
    it "is an instance of Digital Item class" do
      expect(@digital_item).to be_instance_of(DigitalItem)
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@digital_item.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @digital_item.name="New Name"
      expect(@digital_item.name).to eq("New Name")
    end   
    it "should be able to get and set price" do
      @digital_item.price=44.99
      expect(@digital_item.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@digital_item.description).to eq("")
      @digital_item.description="test"
      expect(@digital_item.description).to eq("test")
    end
    it "should be able to get and set run_time" do
      expect(@digital_item.run_time).to eq(0)
      @digital_item.run_time=100
      expect(@digital_item.run_time).to eq(100)
    end
    it "should be able to get and set weight and default to -1" do
      expect(@digital_item.weight).to eq(-1)
      @digital_item.weight=100
      expect(@digital_item.weight).to eq(100)
    end
    it "should be able to get and set download size" do
      expect(@digital_item.download_size).to eq(0)
      @digital_item.download_size=100
      expect(@digital_item.download_size).to eq(100)
    end
  end

  describe "Methods" do
    it "Quantity should always be 1" do
      expect(@digital_item.quantity).to eq(1)
    end
    it "quantity should remain 1 after stock" do
      result = @digital_item.stock 5
      expect(@digital_item.quantity).to eq(1)
    end
    it "quantity should remain 1 after sell" do
      result = @digital_item.sell 3
      expect(@digital_item.quantity).to eq(1)
    end
    it "should be able to return items and keep quantity 1" do
      result = @digital_item.return 3
      expect(@digital_item.quantity).to eq (1)
    end
    it "should return FALSE for ship_price since weight is -1" do
      expect(@digital_item.weight = -1)
      result = @digital_item.ship_price
      expect(result).to eq(false)
    end
  end
end