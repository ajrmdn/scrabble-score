#!/usr/bin/env ruby
require('pry')
require('rspec')


class String
  # def initialize (word)
  #   @word = word
  # end

  def what_is
    puts self
  end

  def scrabble
    scorebook = Hash.new()
    array_1 = ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]
    array_2 = ['D', 'G']
    array_3 = ['B', 'C', 'M', 'P']
    array_4 = ["F", 'H', 'V', 'W', 'Y']
    array_5 = ['K']
    array_8 = ["J", 'X']
    array_10 = ["Q", "Z"]

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

    counter = 0
    word_score = 0
    self.length.times do
      letter_score = scorebook.fetch(self[counter])
      word_score += letter_score
      counter += 1

    end

    return word_score

  end

end


puts "ABDELLAH".scrabble()
