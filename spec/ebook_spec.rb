require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    @e_book = EBook.new("Generic E-Book", 7.99)
  end

  describe "Initialization" do
    it "is extended from Digital Item" do
      expect(@e_book).to be_kind_of(DigitalItem)
    end
    it "is an instance of Digital Item class" do
      expect(@e_book).to be_instance_of(EBook)
    end    
  end

  #check getters and setters
  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@e_book.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @e_book.name="New Name"
      expect(@e_book.name).to eq("New Name")
    end   
    it "should be able to get and set price" do
      @e_book.price=44.99
      expect(@e_book.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@e_book.description).to eq("")
      @e_book.description="test"
      expect(@e_book.description).to eq("test")
    end    
    it "should be able to get and set pages" do
      expect(@e_book.pages).to eq(0)
      @e_book.pages=100
      expect(@e_book.pages).to eq(100)
    end
    it "should be able to get and set author" do
      expect(@e_book.author).to eq("")
      @e_book.author="New Author"
      expect(@e_book.author).to eq("New Author")
    end
  end

end