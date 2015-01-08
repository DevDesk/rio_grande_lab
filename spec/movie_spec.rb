require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    @movie = Movie.new("Generic Movie", 8.99)
  end

  describe "Initialization" do
    it "is extended from Digital Item" do
      expect(@movie).to be_kind_of(DigitalItem)
    end
    it "is an instance of Digital Item class" do
      expect(@movie).to be_instance_of(Movie)
    end    
  end

    #check getters and setters
  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@movie.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @movie.name="New Name"
      expect(@movie.name).to eq("New Name")
    end   
    it "should be able to get and set price" do
      @movie.price=44.99
      expect(@movie.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@movie.description).to eq("")
      @movie.description="test"
      expect(@movie.description).to eq("test")
    end
    it "should be able to get and set run_time" do
      expect(@movie.run_time).to eq(0)
      @movie.run_time=100
      expect(@movie.run_time).to eq(100)
    end
    it "should be able to get and set director" do
      expect(@movie.director).to eq("")
      @movie.director="New Director"
      expect(@movie.director).to eq("New Director")
    end
      it "should be able to get and set producer" do
      expect(@movie.producer).to eq("")
      @movie.producer="New Producer"
      expect(@movie.producer).to eq("New Producer")
    end
  end  

end