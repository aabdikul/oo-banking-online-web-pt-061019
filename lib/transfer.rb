class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receive = receiver
    @amount = 50
    @status = "pending"  
  end

end
