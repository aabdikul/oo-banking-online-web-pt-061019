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
    if  @sender.valid? && @status == "pending"
        @sender.balance -= @amount
        @receiver.deposit(@amount)
        @status = "complete"
    else
      puts "dog"
  end
end

end
