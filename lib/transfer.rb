class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = 50
    @status = "pending"
  end

  def valid?
    @sender.valid?
    @receiver.valid?
  end
#sender = amanda -> 950
#receiver = avi -> 1050
  def execute_transaction
    @sender.balance.to_i -= @amount.to_i
    @receiver.balance.to_i += @amount.to_i
    @status = "complete"

end
