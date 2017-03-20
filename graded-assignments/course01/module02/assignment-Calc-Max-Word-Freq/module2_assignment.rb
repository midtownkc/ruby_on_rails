#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
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
test1 = LineAnalyzer.new("Ruby ruby Ruby ruby Python python Python python scala go", 1)
puts test1.highest_wf_words
puts test1.highest_wf_count
puts test1.line_number


#  Implement a class called Solution.
class Solution

  # Implement the following read-only attributes in the Solution class.
  #* analyzers - an array of LineAnalyzer objects for each line in the file
  #* highest_count_across_lines - a number with the maximum value for highest_wf_words attribute in the analyzers array.
  #* highest_count_words_across_lines - a filtered array of LineAnalyzer objects with the highest_wf_words attribute
  #  equal to the highest_count_across_lines determined previously.

  # Implement the following methods in the Solution class.
  #* analyze_file() - processes 'test.txt' intro an array of LineAnalyzers and stores them in analyzers.
  #* calculate_line_with_highest_frequency() - determines the highest_count_across_lines and
  #  highest_count_words_across_lines attribute values
  #* print_highest_word_frequency_across_lines() - prints the values of LineAnalyzer objects in
  #  highest_count_words_across_lines in the specified format

  # Implement the analyze_file() method() to:
  #* Read the 'test.txt' file in lines
  #* Create an array of LineAnalyzers for each line in the file

  # Implement the calculate_line_with_highest_frequency() method to:
  #* calculate the maximum value for highest_wf_count contained by the LineAnalyzer objects in analyzers array
  #  and stores this result in the highest_count_across_lines attribute.
  #* identifies the LineAnalyzer objects in the analyzers array that have highest_wf_count equal to highest_count_across_lines
  #  attribute value determined previously and stores them in highest_count_words_across_lines.

  #Implement the print_highest_word_frequency_across_lines() method to
  #* print the values of objects in highest_count_words_across_lines in the specified format
end
