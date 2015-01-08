require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initlize item
    @cd = Cd.new("Generic Cd", 3.99)
  end

  #check inilization
  #check that it is an extended from Item
  #check that it is an instance of Cd
  describe "Initialization" do
    it "is extended from Item" do
      expect(@cd).to be_kind_of(Item)
    end

    it "is an instance of Book class" do
        expect(@cd).to be_instance_of(Cd)
    end
  end

  #check getters and setters
  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@cd.quantity).to eq(0)
    end
    it "should be able to get and set name" do
      @cd.name="New Name"
      expect(@cd.name).to eq("New Name")
    end   
    it "should be able to get and set price" do
      @cd.price=44.99
      expect(@cd.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@cd.description).to eq("")
      @cd.description="test"
      expect(@cd.description).to eq("test")
    end
    it "should be able to get and set tracks" do
      expect(@cd.tracks).to eq("")
      @cd.tracks="New Track"
      expect(@cd.tracks).to eq("New Track")
    end
    it "should be able to get and set artist" do
      expect(@cd.artist).to eq("")
      @cd.artist="New Artist"
      expect(@cd.artist).to eq("New Artist")
    end
    it "should be able to get and set run_time" do
      expect(@cd.run_time).to eq(0)
      @cd.run_time=100
      expect(@cd.run_time).to eq(100)
    end
  end


end