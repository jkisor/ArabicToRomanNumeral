require_relative('../lib/roman_numeral_converter')

describe "converting arabic to roman numerals" do
  context "romans didn't have 0" do
    it "converts 0 to a blank string" do
      expect(convert(0)).to eq("")
    end
  end
  {
      1 => "I",
      2 => "II",
      3 => "III",
      4 => "IV",
      5 => "V",
      6 => "VI",
      9 => "IX",
      10 => "X",
      40 => "XL",
      50 => "L",
      90 => "XC",
      100 => "C",
      400 => "CD",
      500 => "D",
      900 => "CM",
      1000 => "M",
      3497 => "MMMCDXCVII"
  }.each_pair do |arabic, roman|
    it "converts #{arabic} to #{roman}" do
      expect(convert(arabic)).to eq(roman)
    end
  end
end