require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:souffle) { Dessert.new("souffle", 13, "Fouet")}

  describe "#initialize" do
    it "sets a type" do
      expect(souffle.type).to eq("souffle")
    end

    it "sets a quantity" do
    expect(souffle.quantity).to eq(13)
    end

    it "starts ingredients as an empty array" do
      expect (souffle.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{ Dessert.new("cake", "one", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      souffle.add_ingredient("egg")
      expect(souffle.ingredients).to include("egg")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      souffle.add_ingredient(["chocolate", "flour", "egg", "sugar", "butter"]) 

      expect(souffle.ingredients).to eq(ingredients)
      souffle.mix!
      expect(souffle.ingredients).not_to eq(ingredients)
      expect(souffle.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      souffle.eat(3)
      expect(souffle.quantity).to eq(10)
    end


    it "raises an error if the amount is greater than the quantity" do
      souffle.eat(20)
      expect to raise_error('Sold out!')
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
        allow(chef).to receive(:titleize).and_return("Chef Fouet the Great Baker")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
    expect(chef).to receive(:bake).with(souffle)
      souffle.make_more
    end
  end
end
