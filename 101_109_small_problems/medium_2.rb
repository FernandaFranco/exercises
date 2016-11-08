# def longest_sentence(file)
#   text = File.read(file)
#   ordered_sentences = text.split(/[!.?]\s*/).sort_by {|sentence| sentence.split.count }.reverse
#   puts ordered_sentences[0], ordered_sentences[0].split.count
# end

# longest_sentence('four_score.txt')
# longest_sentence('frankenstein.txt')

# def longest_paragraph(file)
#   text = File.read(file)
#   ordered_paragraphs = text.split(/\n\n/).sort_by {|paragraph| paragraph.split.count }.reverse
#   puts ordered_paragraphs[0], ordered_paragraphs[0].split.count
# end

# longest_paragraph('four_score.txt')
# longest_paragraph('frankenstein.txt')

# def longest_word(file)
#   text = File.read(file)
#   ordered_words = text.split(/\W+/).sort_by {|word| word.size }.reverse
#   puts ordered_words[0], ordered_words[0].size
# end

# longest_word('four_score.txt')
# longest_word('frankenstein.txt')

# ALPHABET = ('A'..'Z').to_a
          
# def block_word?(string)
#   unavailable_letters = []
#   string.upcase.chars.each do |char|
#     return false if unavailable_letters.flatten.include?(char)
#     if ALPHABET.index(char) < 13
#       block = [char, ALPHABET[ALPHABET.index(char) + 13]]
#     else
#       block = [ALPHABET[ALPHABET.index(char) - 13], char]
#     end
#     p unavailable_letters << block
#   end
#   true
# end

# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true

# def letter_percentages(string)
#   {
#     lowercase: (string.count('a-z')/string.size.to_f) * 100,
#     uppercase: (string.count('A-Z')/string.size.to_f) * 100,
#     neither: (string.count('^a-zA-Z')/string.size.to_f) * 100
#   }
# end

# p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

def balanced?(string)
  open_parenthesis = 0
  string.chars.each do |char|
    open_parenthesis += 1 if char == '('
    open_parenthesis -= 1 if char == ')'
    return false if open_parenthesis < 0
  end
  open_parenthesis == 0 ? true : false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false