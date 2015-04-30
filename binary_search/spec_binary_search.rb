require_relative 'binary_search'

describe "my_binary_search" do
    let(:small_array) { [4,8,15,16,23,42] }
    let(:large_array) { (1..10000).to_a }
    let(:decimal_array) { [1.2345,4.87653,4.9,5.0000123,8.237498,10.2,15.39745] }

    it "finds the correct index on a small array" do
        rand_index = rand(0..5)
        rand_int = small_array[rand_index]
        expect(small_array.my_binary_search(rand_int)).to eq rand_index
    end

    it "finds the correct index on a large array" do
        rand_int = rand(1..10000)
        expect(large_array.my_binary_search(rand_int)).to eq(rand_int - 1)
    end
    
    it 'finds the correct index on an array of decimals' do
        expect(decimal_array.my_binary_search(8.237498)).to eq 4
    end

    it 'is able to find first item in array' do
        expect(small_array.my_binary_search(4)).to eq 0
        expect(large_array.my_binary_search(1)).to eq 0
    end

    it 'is able to find last item in array' do
        expect(small_array.my_binary_search(42)).to eq 5
        expect(large_array.my_binary_search(10000)).to eq 9999
    end

end