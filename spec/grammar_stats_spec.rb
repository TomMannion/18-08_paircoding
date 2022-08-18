require 'grammar_stats'

describe  GrammarStats do

  it "Initialize GrammarStats" do
    stats = GrammarStats.new
  end

  it "Checks if starts with Capital and ends with ending puncuation" do
    stats = GrammarStats.new
    expect(stats.check("this does not work.")).to eq false
  end

  it "Checks if starts with Capital and ends with ending puncuation" do
    stats = GrammarStats.new
    expect(stats.check("This does work.")).to eq true
  end

  it "Checks the pass percentage of tests completed" do
    stats = GrammarStats.new
    stats.check("This does work.")
    stats.check("this does not work.")
    stats.check("This does not work")
    stats.check("this does work again.")
    expect(stats.percentage_good).to eq 25
  end
  
end