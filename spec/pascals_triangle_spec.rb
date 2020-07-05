require 'pascals_triangle'

describe PascalsTriangle do

  describe '.triangle' do
    it "returns first row if given number is 0" do
      expect(PascalsTriangle.new.triangle(0)).to eql([1])
    end

    it "returns two rows if given number is 1" do
      expect(PascalsTriangle.new.triangle(1)).to eql([1, 1])
    end

    it "returns four rows if given number is 3" do
      expect(PascalsTriangle.new.triangle(3)).to eql([1, 3, 3, 1])
    end

    it "returns five rows if given number is 4" do
      expect(PascalsTriangle.new.triangle(4)).to eql([1, 4, 6, 4, 1])
    end

  end

end
