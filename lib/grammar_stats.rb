class GrammarStats
  def initialize
    @checked = { :true_checked => 0, :false_checked => 0 }
  end

  def check(text) 
    if text[0].match?(/[A-Z]/) && text[-1].match?(/[!.?]/)
      @checked[:true_checked] += 1
      return true
    else 
      @checked[:false_checked] += 1
      return false
    end
  end

  def percentage_good
    total = @checked[:true_checked] + @checked[:false_checked]
    percentage = (@checked[:true_checked] / total.to_f) * 100 
    return percentage.to_i
  end
end