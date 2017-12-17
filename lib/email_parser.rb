# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailParser
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def parse
    if self.string.include?(" ") && self.string.include?(", ")
      emails = self.string.gsub(", ", " ")
      emails = emails.split(" ").uniq
    elsif self.string.include?(",")
        emails = self.string.split(", ")
        emails.uniq
    else
      emails = self.string.split(" ")
      emails.uniq
    end
  end
end

mail1 = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
mail2 = "avi@test.com arel@test.com avi@test.com, avi@test.com arel@test.com arel@test.com"

mail = EmailParser.new(mail1)
mailtwo = EmailParser.new(mail2)
# binding.pry
