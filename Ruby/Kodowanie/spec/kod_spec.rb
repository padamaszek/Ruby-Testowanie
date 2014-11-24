require_relative 'spec_helper.rb'
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
  let(:a){a = 45}
  let(:b){b = 60}
  it "should return 15" do
    expect(@klasa.NWD(a,b)).to eq(15)
  end
end

describe "wykPubl" do
  let(:o){o = 120}
  it "should return 7" do
    expect(@klasa.wykPubl(o)).to eq(7)
  end
end

describe "wyklPryw" do
  let(:e){e = 7}
  let(:o){o = 120}
  it "should return 103" do
    expect(@klasa.wyklPryw(e,o)).to eq(103)
  end
end

describe "kodRSA" do
  let(:t){t = 123}
  let(:e){e = 7}
  let(:n){n = 143}
  it "should return 7" do
    expect(@klasa.kodRSA(t,e,n)).to eq(7)
  end
end


end