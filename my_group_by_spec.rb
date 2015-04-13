require_relative 'my_group_by'

describe Array do
  let (:simple_array) { [4,8,15,16,23,42] }

  describe "#my_each" do
    it "iterates over every element" do
      same_array = []
      simple_array.my_each { |x| same_array << x }
      expect(same_array).to eq(simple_array)
    end
  end

  describe "#my_each_index" do
    it "returns each items index value" do
      index_array = []
      simple_array.my_each_index { |x| index_array << x }
      expect(index_array).to eq [0,1,2,3,4,5]
    end
  end

  describe "#my_group_by" do
    let (:output) { simple_array.my_group_by { |x| x.odd? } }

    it "returns a hash" do
      expect(output).to be_a Hash
    end

    it "groups by block results" do
      expect(output.has_key?(true)).to eq true
      expect(output.has_key?(false)).to eq true
    end

    it "returns correct results" do
      expect(output[true]).to eq [15,23]
    end
  end
end