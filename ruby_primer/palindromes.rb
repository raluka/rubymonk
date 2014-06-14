=begin
Palindromes

Problem Statement
Given a sentence, return true if the sentence is a palindrome.

You are supposed to write a method palindrome? to accomplish this task.

Note Ignore whitespace and cases of characters.

Example:
Given "Never odd or even" the method should return true
=end

def palindrome?(sentence)
  low_no_spaces = sentence.downcase.gsub(' ','')
  low_no_spaces == low_no_spaces.reverse
end