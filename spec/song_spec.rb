require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    #initlize item
    @song = Song.new("Generic Song", 3.99)
  end

  #check inilization
  #check that it is an extended from Item
  #check that it is an instance of Song
  describe "Initialization" do
    it "is extended from Item" do
      expect(@song).to be_kind_of(Item)
    end
    it "is an instance of Book class" do
        expect(@song).to be_instance_of(Song)
    end
  end

  #check getters and setters
  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@song.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @song.name="New Name"
      expect(@song.name).to eq("New Name")
    end   
    it "should be able to get and set price" do
      @song.price=44.99
      expect(@song.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@song.description).to eq("")
      @song.description="test"
      expect(@song.description).to eq("test")
    end
    it "should be able to get and set artist" do
      expect(@song.artist).to eq("")
      @song.artist="New Artist"
      expect(@song.artist).to eq("New Artist")
    end
    it "should be able to get and set run_time" do
      expect(@song.run_time).to eq(0)
      @song.run_time=100
      expect(@song.run_time).to eq(100)
    end
  end

end