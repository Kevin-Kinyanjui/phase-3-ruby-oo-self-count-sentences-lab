require 'pry'

class String

  def sentence?
    self.include?('.')
  end

  def question?
    self.include?('?')
  end

  def exclamation?
    self.include?('!')
  end

  def count_sentences
    self.split(/[.!?]/).reject(&:empty?).count
  end
end

puts "Random sentence. Is here.".sentence?
puts "Random sentence. Is here?".question?
puts "Random sentence. Is here!".exclamation?
puts "Random sentence. Is here! Is here.".count_sentences

