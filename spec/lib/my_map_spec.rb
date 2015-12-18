require_relative "../../lib/my_map"

describe Array do
  describe '#my_map' do
    context 'when the block is passed in as an argument' do
      it 'returns the same output as the original map method' do
        arr = [1, 2, 3, 4, 5]
        expect(arr.my_map { |a| 2*a }).to eq arr.map { |a| 2*a }
        expect(arr.my_map { |a| a**2 }).to eq arr.map { |a| a**2 }

        arr = ['a', 'b', 'c']
        expect(arr.my_map { |a| a + '!' }).to eq arr.map { |a| a + '!' }
      end
    end
  end
end
