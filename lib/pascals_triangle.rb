class PascalsTriangle

  def triangle(row_num)
    if row_num == 0
      rows = [1]
    else
      previous_row = triangle(row_num - 1)
      middle = []
      (previous_row.length - 1).times do |sum|
        middle.push(previous_row[sum] + previous_row[sum + 1])
      end
      rows = [1, middle, 1].flatten
    end
    rows
  end
end
