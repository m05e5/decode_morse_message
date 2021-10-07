def decode_char(character)
  letters = { A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.', F: '..-.', G: '--.', H: '....', I: '..',
              J: '.---', K: '-.-', L: '.-..', M: '--', N: '-.', O: '---', P: '.--.', Q: '--.-', R: '.-.', S: '...',
              T: '-', U: '..-', V: '...-', W: '.--', X: '-..-', Y: '-.--', Z: '--..' }

  letters.each do |key, value|
    next unless value == character

    print(key)
    return key
  end
end

def decode_word(word)
  word_array = word.split
  result = ''
  word_array.each do |i|
    result += decode_char(i).to_s
  end
  result
end

def decode_phrase(phrase)
  new_phrase = phrase.gsub('/', ' ')
  phrase_array = new_phrase.split(/   /, -1)
  final = ''
  phrase_array.each do |j|
    final = if final == ''
              decode_word(j).to_s
            else
              new_word = decode_word(j).to_s
              "#{final} #{new_word}"
            end
  end
  final
end
