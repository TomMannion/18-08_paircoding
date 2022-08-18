class GrammarStats
  def initialize
    # ...
  end

  def check(text) 
    return text[0].match?(/[A-Z]/) && text[-1].match?(/[!.?]/)

  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end