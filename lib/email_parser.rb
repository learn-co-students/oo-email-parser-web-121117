# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails

  @@email_array = []

  def initialize(email_string)
    @email_string = email_string
  end

  def parse
    # @email_string.split(/,| ,| /).uniq
    @email_string.split(/\s |, | /).uniq

  end

end
