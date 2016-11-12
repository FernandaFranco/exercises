p text = File.read('madlibs_base.txt')

adjectives = %w(pretty awesome fat curly nice old)
nouns = %w(dude boy guy man person table)
adverbs = %w(quickly nervously completely dearly honestly timely)
verbs = %w(runs dives hunts drives walks makes)

result = text.split(' ').map do |word|
  case 
  when word.include?('adjective')
    word.gsub('adjective', adjectives.sample)
  when word.include?('noun')
    word.gsub('noun', nouns.sample)
  when word.include?('adverb')
    word.gsub('adverb', adverbs.sample)
  when word.include?('verb')
    word.gsub('verb', verbs.sample)
  else
    word
  end
end

p result.join(' ')




