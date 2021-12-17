class Oystercard
 
  attr_reader :balance

  def initialize()
    
    @balance = 0
    
  end

  def top_up(top_up_amount)
  
    @balance = @balance + top_up_amount
    return @balance

  end

end