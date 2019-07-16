#!/usr/bin/env ruby
require('pry')
require('rspec')


class String

  # goofy little method that just prints to the console whatever the object is
  def what_is
    # "self" refers to the string eg "whatever" is "whatever"
    puts self
  end

  def scrabble
    # hashes are key value pairs, like a dictionary entry and the definition of the word
    scorebook = Hash.new()
    array_1 = ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]
    array_2 = ['D', 'G']
    array_3 = ['B', 'C', 'M', 'P']
    array_4 = ["F", 'H', 'V', 'W', 'Y']
    array_5 = ['K']
    array_8 = ["J", 'X']
    array_10 = ["Q", "Z"]

    # this is a lazy way of making the hashes for each letter
    # we could have done this by saying scorebook.store("A", 1), but that was boring and would have taken forever
    array_1.each do |letter|
      scorebook.store(letter, 1)

    end

    array_2.each do |letter|
      scorebook.store(letter, 2)

    end

    array_3.each do |letter|
      scorebook.store(letter, 3)

    end

    array_4.each do |letter|
      scorebook.store(letter, 4)

    end

    array_5.each do |letter|
      scorebook.store(letter, 5)

    end

    array_8.each do |letter|
      scorebook.store(letter, 8)

    end

    array_10.each do |letter|
      scorebook.store(letter, 10)

    end

    # this is like a for loop in javascript, but it's a little more bare bones
    # the counter here is like i = 0;
    # self.length is the number of characters in a word -- "COW".length is 3
    # 3.times do /// end does whatever is in the /// three times
    counter = 0
    word_score = 0
    self.length.times do
      # go into the scorebook, find the key for the letter we're looking at, and bring back the value. "C" brings back "3"
      letter_score = scorebook.fetch(self[counter])
      #add 3 to the word score before moving on to the next letter
      word_score += letter_score
      #update the counter so we look at a different letter of the word
      counter += 1

    end

    # return the total word score after we look at all the letters
    return word_score

  end

end
