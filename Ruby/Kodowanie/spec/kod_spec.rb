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
end