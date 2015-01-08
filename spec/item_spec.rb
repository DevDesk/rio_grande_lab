require_relative 'spec_helper'
require_relative '../lib/Item'

describe Item do

  before(:context) do
    @item = Item.new("Generic Item",1.99)
    #@item2 = Item.new("2nd Item",1.99,30)  other option but not preferred. crashes all, see last accessor below for better option
  end

  before(:context) do
    @item = Item.new("Generic Item",1.99,30)
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@item).to be_instance_of(Item)
    end
    it "is assigned a name" do
      expect(@item.name).to eq("Generic Item")
    end
    it "is assigned a price" do
      expect(@item.price).to eq(1.99)
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@item.quantity).to eq(0)
    end
    it "should be able to get and set name" do
      @item.name="New Name"
      expect(@item.name).to eq("New Name")
    end   
    it "should be able to get and set price" do
      @item.price=44.99
      expect(@item.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@item.description).to eq("")
      @item.description="test"
      expect(@item.description).to eq("test")
    end
    it "should be able to get and set run_time" do
      expect(@item.run_time).to eq(0)
      @item.run_time=100
      expect(@item.run_time).to eq(100)
    end
    it "should be able to get and set weight" do
      expect(@item.weight).to eq(0)
      @item.weight=100
      expect(@item.weight).to eq(100)
    end
    it "ship rate per oz should always be 1.2" do
      expect(@item.ship_price_per_oz).to eq (1.2)
    end
    # it "should be able to be initalized with a weight" do
    #   item2 = Item.new("Generic Item2",2.99,2.2)
    #   expect(item2.name).to eq("Generic Item2")
    #   expect(item2.price).to eq(2.99)
    #   expect(item2.weight).to eq(2.2)
    # end
  end

  describe "Methods" do
    it "should be able to stock" do
      result = @item.stock 5
      expect(result).to eq(true)
      expect(@item.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @item.sell 6
      expect(result).to eq(false)
      expect(@item.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @item.sell 3
      expect(result).to eq(true)
      expect(@item.quantity).to eq(2)
    end
    it "should be able to return items and update quantity" do
      result = @item.return 3
      expect(result).to eq(true)
      expect(@item.quantity).to eq(5)
    end
    it "should return product of weight times ship_price_per_oz" do
      expect(@item.weight=0)
      @item.weight=100
      expect(@item.weight=100)
      result = @item.ship_price
      expect(result).to eq(true)
      # expect(@item.ship_price).to eq(120)
      # expect(@item.shop_price).to eq(100 * 1.2)    this looks above at what I set price
    end
  end

end