require_relative 'host.rb'

class Listing
    attr_accessor :host, :beds, :dates_available, :cancellation, :guests, :reviews, :price

    def initialize(airbnb_host, airbnb_beds, airbnb_dates, airbnb_price)
    @cancellation="strict"
    @guests=[]
    @reviews={}
    @host=airbnb_host
    @beds=airbnb_beds
    @dates_available=airbnb_dates
    @price=airbnb_price
    end
    
    def reserve_and_pay(name_guest, num_nights)
    @guests.push(name_guest)
    return @price*num_nights
    @price.push(nights)
    end
    
    def leave_review(review_guest, review_text)
    @reviews[:jerry]="This place sucks!"
    end 
end

tom=Listing.new("jerry", 2, "6/12/17-6/28/17", 150)
puts tom.cancellation
puts tom.host
puts tom.beds
puts tom.dates_available
puts tom.price

puts tom.reserve_and_pay("Tom", 16)
puts tom.guests
puts tom.leave_review("jerry", "This place sucks!")