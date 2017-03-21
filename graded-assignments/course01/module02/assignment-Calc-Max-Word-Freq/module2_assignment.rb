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
#Line Analyzer tests
# test1 = LineAnalyzer.new("Ruby ruby Ruby ruby Python python Python python scala go", 1)
# puts test1.highest_wf_words
# puts test1.highest_wf_count
# puts test1.line_number

class Solution
  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines

  def initialize
    @analyzers = []
  #comment this off and on to print values in file
    #self.analyze_file
  end

#creates array of LineAnalyzers
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
    counts = []
    @analyzers.each { |a| counts.push(a.highest_wf_count.to_i) }
    @highest_count_across_lines = counts.sort[-1]
  end

  #  highest_count_words_across_lines attribute values
  def highest_count_words_across_lines

    ##code that returns objects
    wf_count = 0
    highest = []
    @analyzers.each do |analyze|
      if analyze.highest_wf_count > wf_count
        wf_count = analyze.highest_wf_count
      else
      end
      @highest_count_across_lines = wf_count
      if analyze.highest_wf_count == wf_count
        highest.push(analyze)
      else
      end
    @highest_count_words_across_lines = highest
    end

    ##Code which returns array
    # outcome = Hash.new
    # words = []
    # broke_words = []
    # @analyzers.each { |a| outcome[a.highest_wf_words] = a.highest_wf_count }
    # max_words = outcome.select { |k, v| v == outcome.values.max }
    # max_words.map { |k, v| [ words.push(k), @highest_count_across_lines = v ] }
    #
    # @highest_count_words_across_lines = words.flatten

  end

    #* print_highest_word_frequency_across_lines() - prints the values of LineAnalyzer objects in
    #  highest_count_words_across_lines in the specified format
  def print_highest_word_frequency_across_lines()
    self.highest_count_words_across_lines()
    puts "The following words have the highest word frequency per line: "
    @highest_count_words_across_lines.each {|item| puts "#{item.highest_wf_words} (appears on line ##{item.line_number})"}
      #Implement the print_highest_word_frequency_across_lines() method to
      #* print the values of objects in highest_count_words_across_lines in the specified format
  end
end

# getIt = Solution.new
# getIt.analyze_file
# getIt.print_highest_word_frequency_across_lines
