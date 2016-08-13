class Diamond
  def self.make_diamond(letter)
    count = 0
    layer_pos = 0
    letter_arr = ('A'..letter.upcase).to_a
    middle_of_diamond = letter_arr.length - 1
    outer_spaces = middle_of_diamond
    str = ''

    while count <= middle_of_diamond * 2
      if count > middle_of_diamond
        layer_pos -= 1
        outer_spaces += 1
        inner_spaces = layer_pos + layer_pos - 1

        str << generate_diamond_layer(outer_spaces, letter_arr[layer_pos], inner_spaces)
      else
        inner_spaces = layer_pos + layer_pos - 1
        str << generate_diamond_layer(outer_spaces, letter_arr[layer_pos], inner_spaces)

        layer_pos += 1
        outer_spaces -= 1 if outer_spaces > 0
      end

      layer_pos -= 1 if count == middle_of_diamond
      count += 1
    end

    str
  end

  private

  def self.generate_diamond_layer(outer_spaces, letter, inner_spaces = 0)
    if letter == 'A'
      spacing(outer_spaces) << letter << spacing(outer_spaces) << "\n"
    else
      spacing(outer_spaces) << letter << spacing(inner_spaces) << letter << spacing(outer_spaces) << "\n"
    end
  end

  def self.spacing(spaces)
    ' ' * spaces
  end
end
