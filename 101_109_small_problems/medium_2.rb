def longest_sentence(text)
  text.split('.').sort {|sentence| sentence.length }
end

p longest_sentence('I am, therefore I exist. You are what you eat. I love Ruby!')