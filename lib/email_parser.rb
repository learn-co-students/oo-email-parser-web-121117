class EmailParser
  attr_accessor :parse

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.scan(/\S+/).map { |email| email[-1] == "," ? email[0...-1] : email}.uniq
  end
end
