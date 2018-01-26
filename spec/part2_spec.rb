require 'ruby_intro.rb'

describe "#hello" do
  it "debería estar definido" do
    expect { hello("Testing") }.not_to raise_error()#::NoMethodError)
  end

  it "El método Hello devuelve la cadena correcta [30 puntos]" , points: 30 do
    expect(hello("Dan").class).to eq(String)
    expect(hello("Dan")).to eq('Hello, Dan'), "Incorrect results for input: \"Dan\""
    expect(hello("BILL")).to eq('Hello, BILL'), "Incorrect results for input: \"BILL\""
    expect(hello("Mr. Ilson")).to eq('Hello, Mr. Ilson'), "Incorrect results for input: \"Mr. Ilson\""
  end
end

describe "#starts_with_consonant?" do
  it "debería estar definido" do
    expect { starts_with_consonant?("d") }.not_to raise_error()#::NoMethodError)
  end
  it 'cadenas que devuelven true [10 puntos]' , points: 10 do
    expect(starts_with_consonant?('v')).to be_truthy, "'v' es una consonante"
    ['v', 'vest', 'Veeee', 'crypt'].each do |string|
      expect(starts_with_consonant?(string)).to be_truthy, "Incorrect results for input: \"#{string}\""
    end
  end
  it 'cadenas que devuelven false [10 puntos]' , points: 10 do
    expect(starts_with_consonant?('a')).to be_falsy, "'a' no es consonante"
    ['asdfgh', 'Unix'].each do |string|
      expect(starts_with_consonant?(string)).to be_falsy, "La siguiente cadena no comienza en consonante: \"#{string}\""
    end
  end
  it 'funciona con la cadena vacía [5 puntos]' , points: 5 do
    expect(starts_with_consonant?('')).to be_falsy
  end
  it 'funciona con cadenas que comienzan con un caracter especial [5 puntos]' , points: 5 do
    expect(starts_with_consonant?('#foo')).to be_falsy
  end
end

describe "#binary_multiple_of_4?" do
  it "debería estar definido" do
    expect { binary_multiple_of_4?("yes") }.not_to raise_error()#::NoMethodError)
  end
  it "cadenas de solo dígitos binarios [30 puntos]" , points: 30 do
    ["1010101010100", "0101010101010100", "100", "0"].each do |string|
      expect(binary_multiple_of_4?(string)).to be_truthy,  "La siguiente cadena no clasifica: \"#{string}\""
    end
    ["101", "1000000000001"].each do |string|
      expect(binary_multiple_of_4?(string)).not_to be_truthy,  "La siguiente cadena no clasifica: \"#{string}\""
    end
  end
  it "rechaza cadenas no binarias [10 puntos]" , points: 10 do
    expect(binary_multiple_of_4?('a100')).to be_falsy, "'a100' no es una cadena binaria!"
    expect(binary_multiple_of_4?('')).to be_falsy, "La cadena vacía no es un binario!"
  end
end
