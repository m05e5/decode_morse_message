$letters = {
  A: '.-',
  B: '-...',
  C: '-.-.',
  D: '-..',
  E: '.',
  F: '..-.',
  G: '--.',
  H: '....',
  I: '..',
  J: '.---',
  K: '-.-',
  L: '.-..',
  M: '--',
  N: '-.',
  O: '---',
  P: '.--.',
  Q: '--.-',
  R: '.-.',
  S: '...',
  T: '-',
  U: '..-',
  V: '...-',
  W: '.--',
  X: '-..-',
  Y: '-.--',
  Z: '--..'
}

def decode_char(character)
  $letters.each do |key, value|
    if value == character
      return key
      break
    end
  end
end

def decode_word(word)
  word_array = word.split
  result = ''
  word_array.each do |i|
    result += decode_char(i).to_s
  end
  print result
end

def decode_phrase(phrase)
  new_phrase = phrase.gsub('/', ' ')
  phrase_array = new_phrase.split(/   /, -1)
  final = ''
  phrase_array.each do |j|
    final = if final == ''
              decode_word(j).to_s
            else
              "#{final} #{decode_word(j)}.to_s"
            end
  end
  print final
end
