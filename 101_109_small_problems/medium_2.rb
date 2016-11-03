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

