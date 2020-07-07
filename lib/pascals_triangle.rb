class PascalsTriangle

  def initialize
    @triangle = [[1]]
  end

  def one_row(row_num)
    if @triangle[row_num]
      return @triangle[row_num]
    end
    previous_row = one_row(row_num - 1)
    @triangle << calculate(previous_row)

    @triangle[row_num]
  end

  def calculate(previous_row)
    middle = []
    (previous_row.length - 1).times do |sum|
      middle.push(previous_row[sum] + previous_row[sum + 1])
    end
    row = [1, middle, 1].flatten

    row
  end

  def to_s(row_num)
    one_row(row_num).to_s.delete_prefix("[").delete_suffix("]")
  end
end
