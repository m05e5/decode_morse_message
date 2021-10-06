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
  $letters.each {
    |key,value|
    if value == character
      return key
      break
    end
  }
end

def decode_word(word)
  word_array = word.split
  result = ''
  word_array.each {
  |i|
    result = result + decode_char(i).to_s
  }
  return result
end
    
def decode_phrase(phrase)
    new_phrase = phrase.gsub('/', ' ')
    phrase_array = new_phrase.split(/   /, -1)
    final = ''
    phrase_array.each {
      |j|
      if final == ''
        final = decode_word(j).to_s
      else
        final = final + ' ' + decode_word(j).to_s
      end
    }
    print final
end
