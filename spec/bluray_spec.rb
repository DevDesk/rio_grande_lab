require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initlize item
      @bluray = Bluray.new("Generic Bluray", 4.99)
  end

  #check inilization
  #check that it is an extended from Item
  #check that it is an instance of Bluray
  #check getters and setters
  describe "Initialization" do
    it "is extended from Item" do
      expect(@bluray).to be_kind_of(Item)
    end

    it "is an instance of Bluray class" do
        expect(@bluray).to be_instance_of(Bluray)
    end
  end

    #check getters and setters
  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@bluray.quantity).to eq(0)
    end
    it "should be able to get and set name" do
      @bluray.name="New Name"
      expect(@bluray.name).to eq("New Name")
    end   
    it "should be able to get and set price" do
      @bluray.price=44.99
      expect(@bluray.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@bluray.description).to eq("")
      @bluray.description="test"
      expect(@bluray.description).to eq("test")
    end
    it "should be able to get and set run_time" do
      expect(@bluray.run_time).to eq(0)
      @bluray.run_time=100
      expect(@bluray.run_time).to eq(100)
    end
    it "should be able to get and set director" do
      expect(@bluray.director).to eq("")
      @bluray.director="New Director"
      expect(@bluray.director).to eq("New Director")
    end
      it "should be able to get and set producer" do
      expect(@bluray.producer).to eq("")
      @bluray.producer="New Producer"
      expect(@bluray.producer).to eq("New Producer")
    end
  end

end