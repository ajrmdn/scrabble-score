require('pry')
require('rspec')
require('scrabble_score')


describe("scrabble_score") do
it("returns a scrabble score for a letter") do
  expect("A".scrabble()).to(eq(1))
end

it("returns a scrabble score for a whole world") do
  expect("COW".scrabble()).to(eq(8))
end

end
