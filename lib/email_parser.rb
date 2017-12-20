# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :string
  def initialize(string)
    @string = string
    @parsed_string = []
  end
  def parse
    dirty_emails_array = @string.split(" ")
    clean_emails_array = dirty_emails_array.each do |email|
      if email[-1] == ","
        @parsed_string << email.slice(0..-2)
      else
        @parsed_string << email
      end
    end
    @parsed_string.uniq
  end
end
