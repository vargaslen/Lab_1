require 'ruby_intro.rb'

describe "BookInStock" do
  it "debería estar definido" do
    expect { BookInStock }.not_to raise_error
  end

  describe 'getters and setters' do
    before(:each)  { @book = BookInStock.new('isbn1', 33.8) }
    it 'debería establecer ISBN [10 puntos]' , points: 10 do
      expect(@book.isbn).to eq('isbn1')
    end
    it 'debería establecer price [10 puntos]' , points: 10 do
      expect(@book.price).to eq(33.8)
    end
    it 'capacidad de cambiar ISBN [10 puntos]' , points: 10 do
      @book.isbn = 'isbn2'
      expect(@book.isbn).to eq('isbn2')
    end
    it 'capacidad de cambiar price [10 puntos]' , points: 10 do
      @book.price = 300.0
      expect(@book.price).to eq(300.0)
    end
  end
  describe 'constructor' do
    it 'debería rechazar número ISBN inválido [10 puntos]' , points: 10 do
      expect { BookInStock.new('', 25.00) }.to raise_error(ArgumentError)
    end
    it 'debería rechazar un precio 0 [10 puntos]' , points: 10 do
      expect { BookInStock.new('isbn1', 0) }.to raise_error(ArgumentError)
    end
    it 'debería rechazar un precio negativo [10 puntos]' , points: 10 do
      expect { BookInStock.new('isbn1', -5.0) }.to raise_error(ArgumentError)
    end
  end
  describe "#price_as_string" do
    it "debería estar definido" do
      expect(BookInStock.new('isbn1', 10)).to respond_to(:price_as_string)
    end
    it 'debería mostrar 33.95 así: "$33.95" [10 puntos]' , points: 10 do
      expect(BookInStock.new('isbn11', 33.95).price_as_string).to eq('$33.95')
    end
    it "debería mostrar 1.1 así: $1.10 [10 puntos]" , points: 10 do
      expect(BookInStock.new('isbn11', 1.1).price_as_string).to eq('$1.10')
    end
    it "debería mostrar 20 así: $20.00 [10 puntos]" , points: 10 do
      expect(BookInStock.new('isbn11', 20).price_as_string).to eq('$20.00')
    end
  end
end
