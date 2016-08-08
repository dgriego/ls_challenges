class Series
  def initialize(str)
    @numbers = str
  end

  def slices(quantity)
    count = 0
    series_arr = []
    numbers_arr = @numbers.split('').map(&:to_i)
    required_series_length = quantity

    if quantity > numbers_arr.length
      raise ArgumentError, 'slice amount cannot be ' \
                           'greater than size of array'
    end

    while count < numbers_arr.length
      series = required_series_length == 1 ? 
               [numbers_arr[count]] :
               numbers_arr[count..quantity - 1]
      series_arr << series if series.length == required_series_length
      count += 1
      quantity += 1
    end

    series_arr
  end
end