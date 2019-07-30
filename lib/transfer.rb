class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receive = receiver
    @status = "pending"
    @amount = 50

end
