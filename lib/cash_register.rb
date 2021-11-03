require 'pry'

class CashRegister
    
attr_accessor :total, :discount, :items 


def initialize (discount = 0)
    @total = 0
    @discount = discount 
    @items = []
    end


# def total 
#     @total 
#     end

# def total=(new_total)
#     @total = new_total 
     
# end


def add_item (title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do 
    items << title      
end 

def apply_discount 
    if @discount == 0
        "There is no discount to apply."
    elsif self.total -= (self.discount / 100.0) * self.total
    "After the discount, the total comes to $#{total.to_i}."
     
end 

def items 


end

# describe '#items' do
#     context 'when called with two arguments' do
#       it 'returns an array containing all items that have been added' do
#         new_register = CashRegister.new
#         new_register.add_item("eggs", 1.99)
#         new_register.add_item("tomato", 1.76)
#         expect(new_register.items).to eq(["eggs", "tomato"])
#       end
#     end

#     context 'when called with three arguments' do
#       it 'returns an array containing all items that have been added, including multiples' do
#         new_register = CashRegister.new
#         new_register.add_item("eggs", 1.99, 2)
#         new_register.add_item("tomato", 1.76, 3)
#         expect(new_register.items).to eq(["eggs", "eggs", "tomato", "tomato", "tomato"])
#       end
#     end
#   end


end

