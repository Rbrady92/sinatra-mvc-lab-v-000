class PigLatinizer

  def piglatinize(text)
    text = text.split(" ")
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    pigged = []

    text.each do |curr|
      if vowels.include?(curr[0])
        pigged << curr + 'way'
      elsif vowels.include?(curr[1])
        pigged << curr[1..curr.length - 1] + curr[0] + 'ay'
      else
        pigged << curr[2..curr.length - 1] + curr[0..1] + 'ay'
      end
    end

    pigged.join(' ')
  end

end
