require 'ruby_intro.rb'

describe 'Ruby intro part 1' do

  describe "#sum" do
    it "debería estar definido" do
      expect { sum([1,3,4]) }.not_to raise_error
    end

    it "devuelve la suma correcta [20 puntos]" , points: 20 do
      expect(sum([1,2,3,4,5])).to be_a_kind_of Fixnum
      expect(sum([1,2,3,4,5])).to eq(15)
      expect(sum([1,2,3,4,-5])).to eq(5)
      expect(sum([1,2,3,4,-5,5,-100])).to eq(-90)
    end

    it " funciona con el arreglo vacío [10 puntos]" , points: 10 do
      expect { sum([]) }.not_to raise_error
      expect(sum([])).to be_zero
    end
  end

  describe "#max_2_sum" do
    it "debería estar definido" do
      expect { max_2_sum([1,2,3]) }.not_to raise_error
    end
    it "devuelve la suma correcta [7 puntos]" , points: 7 do
      expect(max_2_sum([1,2,3,4,5])).to be_a_kind_of Fixnum
      expect(max_2_sum([1,-2,-3,-4,-5])).to eq(-1)
    end
    it 'trabaja bien aún si los dos valores más altos son el mismo [3 puntos]' , points: 3 do
      expect(max_2_sum([1,2,3,3])).to eq(6)
    end
    it "devuelve cero si el arreglo está vacío [10 puntos]" , points: 10 do
      expect(max_2_sum([])).to be_zero
    end
    it "devuelve el valor del elemento si solo hay uno  [10 puntos]" , points: 10 do
      expect(max_2_sum([3])).to eq(3)
    end
  end

  describe "#sum_to_n" do
    it "debería estar definido" do
      expect { sum_to_n?([1,2,3],4) }.not_to raise_error
    end
    it "devuelve true cuando cualesquiera dos elementos suman el segundo argumento  [30 puntos]" , points: 30 do
      expect(sum_to_n?([1,2,3,4,5], 5)).to be true        # 2 + 3 = 5
      expect(sum_to_n?([3,0,5], 5)).to be true            # 0 + 5 = 5
      expect(sum_to_n?([-1,-2,3,4,5,-8], -3)).to be true  # handles negative sum
      expect(sum_to_n?([-1,-2,3,4,5,-8], 12)).to be false # 3 + 4 + 5 = 12 (not 3 elements)
      expect(sum_to_n?([-1,-2,3,4,6,-8], 12)).to be false # no two elements that sum
    end
    #    for rspec 2.14.1
    # it "returns false for the single element array [5 points]" , points: 5 do
    #   sum_to_n?([1], 1).should be_false
    #   sum_to_n?([3], 0).should be_false
    # end
    # it "returns false for the empty array [5 points]" , points: 5 do
    #   sum_to_n?([], 0).should be_false
    #   sum_to_n?([], 7).should be_false
    # end
    it "devualve false cuando hay un solo elemento [5 puntos]" , points: 5 do
      expect(sum_to_n?([0], 0)).to be false
      expect(sum_to_n?([1], 1)).to be false
      expect(sum_to_n?([-1], -1)).to be false
      expect(sum_to_n?([-3], 0)).to be false
    end
    it "devuelve false para un arreglo vacío [5 puntos]" , points: 5 do
      expect(sum_to_n?([], 0)).to be false
      expect(sum_to_n?([], 7)).to be false
    end
  end
end
