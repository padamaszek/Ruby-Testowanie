require_relative '../lib/kod.rb'
describe RSA do 
  class KlasaPom
  end

before(:all) do
  @klasa = KlasaPom.new
  @klasa.extend RSA
end

describe "euler" do
  let(:p){p = 13}
  let(:q){p = 11}
  it "should return 120" do
    expect(@klasa.euler(p,q)).to eq(120)
  end
end

describe "modul" do
  let(:p){p = 13}
  let(:q){p = 11}
  it "should return 143" do
    expect(@klasa.modul(p,q)).to eq(143)
  end
end

describe "NWD" do
  let(:a){a = }
  let(:b){b = }
  it "should return xxx" do
    expect(@klasa.NWD(a,b)).to eq(xxx)
  end
end





end