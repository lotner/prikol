# frozen_string_literal: true

# Module for String
module Lab
  def self.reverse(str)
    str.split.each_with_index
       .map { |word, idx| idx.odd? ? word.reverse : word }
       .join(' ')
  end
end
