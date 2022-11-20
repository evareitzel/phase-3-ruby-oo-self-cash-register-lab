class CashRegister
  attr_accessor :total, :title, :price, :items, :last_transaction
  attr_reader :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def apply_discount
    if discount > 0
      self.total -= total * discount/100
      return "After the discount, the total comes to $#{total}."
    else     
      "There is no discount to apply."
    end 
  end

  def add_item(title, price, num=1)
    self.last_transaction = price * num
    self.total += last_transaction

    num.times { self.items << title }
      
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
