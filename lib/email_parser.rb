# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "pry"

class EmailParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  # def parse
  #   emails.split(/, | /).uniq
  # end
  
  def parse 
        email_array = []
    email_array << @emails.split(/[,\s]/)
    binding.pry
    email_array.flatten.delete_if {|email| email == ""}.uniq
  end 
end