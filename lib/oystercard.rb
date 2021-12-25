class Oystercard
 
  attr_reader :balance

  TOP_UP_LIMIT = 90

  def initialize()
    
    @balance = 0
    
  end

  def top_up(top_up_amount)
  
    raise Exception.new("Your Oystercard balance cannot exceed £#{TOP_UP_LIMIT}.") if @balance + top_up_amount > TOP_UP_LIMIT 

    @balance = @balance + top_up_amount
    return @balance

  end

  def deduct(deduction_amount)
    @balance = @balance - deduction_amount
    return @balance
  end

end