# frozen_string_literal: true

require_relative "manish_palindrome/version"

module ManishPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end
  
  def letters
    self.scan(/[a-zA-Z0-9]/).join
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.letters.downcase
    end

end

class String
  include ManishPalindrome
end

class Integer
  include ManishPalindrome
end
