module FunWithStrings
  def palindrome?
    self.downcase! 
    arr1 = self.gsub(/\W|\_/,'').split('')
    arr2 = arr1.reverse
    if arr1 == arr2
      true
    else 
      false
    end
  end
  
  
  def count_words
    sent = self.downcase
    hash = {}
    if sent.length == 0 || sent.eql?(' ')
      return hash
    else
      arr = sent.gsub(/[^\w\s]/,'').split(' ')
      arr.each do |word|
       if hash.has_key?(word) == true
        x = hash[word] + 1
        hash[word] = x
       else
        hash.store(word, 1)
       end
      end
      return hash
    end
  end
  
  
  def anagram_groups
    if (self.length == 0)
      return []
    else
      arr = self.split(' ')
      x = arr.group_by{|w| w.each_char.sort}.values
      return x
    end
  end#end method
  
  
end#end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
