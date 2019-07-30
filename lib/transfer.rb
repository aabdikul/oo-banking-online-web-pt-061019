class Transfer

  attr_reader :status
  attr_accessor :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid?
    @receiver.valid?
  end
#sender = amanda -> 950
#receiver = avi -> 1050
  def execute_transaction
    if @sender.valid?
      @sender.balance -= @amount
      @receiver.deposit(@amount)
      @status = "complete"
    return @status
    else
    @status = "rejected"
    return "Transaction rejected. Please check your account balance."
    end
  end

end
