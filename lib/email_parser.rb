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
        @parsed_string << email.slice(0...-1)
      else
        @parsed_string << email
      end
    end
    @parsed_string.uniq
  end

end
