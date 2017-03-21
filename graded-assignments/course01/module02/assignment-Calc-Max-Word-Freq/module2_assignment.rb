#Implement all parts of this assignment within (this) module2_assignment2.rb file

class LineAnalyzer
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number

  def calculate_word_frequency(content_in)
    sentence = Hash.new
    words = []
    content_in.downcase.split.each { |word|
      if sentence.has_key?(word)
        sentence[word] += 1
      else
        sentence[word] = 1
      end
    }
    max_words = sentence.select { |k, v| v == sentence.values.max }
    max_words.map { |k, v| [  words.push(k), @highest_wf_count = v] }
    @highest_wf_words = words
  end

  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    self.calculate_word_frequency(@content)
  end

end

class Solution
  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines

  def initialize
    @analyzers = []
  end

#creates array of LineAnalyzers Objects
  def analyze_file
    analyzers = []
    i = 1
    IO.foreach('test.txt') do |line|
      output = LineAnalyzer.new(line.to_s, i)
      analyzers.push(output)
      i += 1
    end
    @analyzers = analyzers
  end

#* calculate_line_with_highest_frequency() - determines the highest_count_across_lines
  def calculate_line_with_highest_frequency
    wf_count = 0
    highest = []
    @analyzers.each do |analyze|
      if analyze.highest_wf_count >= wf_count
        wf_count = analyze.highest_wf_count
      else
      end
      @highest_count_across_lines = wf_count
      if analyze.highest_wf_count == wf_count
        highest.push(analyze)
      else
      end
    @highest_count_words_across_lines = highest.flatten
    end

  end

    #* print_highest_word_frequency_across_lines() - prints the values of LineAnalyzer objects in
    #  highest_count_words_across_lines in the specified format
  def print_highest_word_frequency_across_lines()
    self.highest_count_words_across_lines()
    puts "The following words have the highest word frequency per line: "
    @highest_count_words_across_lines.each {|item| puts "#{item.highest_wf_words} (appears on line ##{item.line_number})"}
  end
end
