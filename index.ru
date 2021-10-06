$letters = {
    "A": ".-",
    "B": "-...",
    "C": "-.-.",
    "D": "-..",
    "E": ".",
    "F": "..-.",
    "G": "--.",
    "H": "....",
    "I": "..",
    "J": ".---",
    "K": "-.-",
    "L": ".-..",
    "M": "--",
    "N": "-.",
    "O": "---",
    "P": ".--.",
    "Q": "--.-",
    "R": ".-.",
    "S": "...",
    "T": "-",
    "U": "..-",
    "V": "...-",
    "W": ".--",
    "X": "-..-",
    "Y": "-.--",
    "Z": "--.." 
}

def decode_char(character)
    $letters.each {
        |key,value|
        if value === character
            print(key)
            return key
            break
        end
    }
end

def decode_word(word)
    wordArray = word.split
    result = ""
    wordArray.each {
      |i|
      result = result + decode_char(i).to_s
    }
    return result
end
    
def decode_phrase(phrase)
    newPhrase = phrase.gsub("/", " ")
    phraseArray = newPhrase.split(/   /, -1)
    final = ""
    phraseArray.each {
        |j|
        if final === ""
            final = decode_word(j).to_s
        else
            final = final + " " + decode_word(j).to_s
        end
    } 
    return final
end