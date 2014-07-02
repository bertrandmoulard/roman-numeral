require 'spec_helper'

describe "convert" do
  describe "converting" do
    it "should convert the integer to a roman numeral string" do
      expect(convert(3964)).to eq "MMMCMLXIV"
      expect(convert(3900)).to eq "MMMCM"
      expect(convert(3400)).to eq "MMMCD"
      expect(convert(3100)).to eq "MMMC"
      expect(convert(3590)).to eq "MMMDXC"
      expect(convert(3540)).to eq "MMMDXL"
      expect(convert(3510)).to eq "MMMDX"
      expect(convert(3519)).to eq "MMMDXIX"
      expect(convert(3514)).to eq "MMMDXIV"
      expect(convert(3511)).to eq "MMMDXI"
      expect(convert(3517)).to eq "MMMDXVII"
      expect(convert(1)).to eq "I"
      expect(convert(4)).to eq "IV"
      expect(convert(5)).to eq "V"
      expect(convert(0)).to eq ""
      expect(convert("what")).to eq ""
    end
  end
end
