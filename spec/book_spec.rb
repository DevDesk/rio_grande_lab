require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    #initlize item
    @book = Book.new("Generic Book",2.99)
  end

  #check inilization
  #check that it is an extended from Item
  #check that it is an instance of Book
  describe "Initialization" do
    it "is extended from Item" do
      expect(@book).to be_kind_of(Item)
    end

    it "is an instance of Book class" do
        expect(@book).to be_instance_of(Book)
    end
  end

  #check getters and setters
  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@book.quantity).to eq(0)
    end
    it "should be able to get and set name" do
      @book.name="New Name"
      expect(@book.name).to eq("New Name")
    end   
    it "should be able to get and set price" do
      @book.price=44.99
      expect(@book.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@book.description).to eq("")
      @book.description="test"
      expect(@book.description).to eq("test")
    end    
    it "should be able to get and set pages" do
      expect(@book.pages).to eq(0)
      @book.pages=100
      expect(@book.pages).to eq(100)
    end
    it "should be able to get and set author" do
      expect(@book.author).to eq("")
      @book.author="New Author"
      expect(@book.author).to eq("New Author")
    end
  end

end